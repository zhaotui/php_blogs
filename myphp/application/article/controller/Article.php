<?php
namespace app\article\controller;
use think\Controller;
use think\Db;
use traits\controller\Jump;

/**
 * Created by PhpStorm.
 * User: HASEE
 * Date: 2018/11/27
 * Time: 8:53
 */
class Article extends Controller
{
    public function admin()
    {
        $user_xp = cookie('user_xp');
        $user_name = cookie('user_name');
        if (empty($user_xp) or empty($user_name))
        {
            $admin = "";
            return $this->view->assign('admin',$admin);
        }
        else
        {
            $admin = " <div id=\"admin\">
                <a href=\"#\">
                    <img src=\"/myphp/public/static/img/icon6.jpeg\" class=\"img-thumbnail rounded-circle\" width=\"75\" height=\"75\">
                    <span>hello,admin</span>
                </a>
            </div>";
            return $this->view->assign('admin',$admin);
        }
    }

     public function user_login()
     {
         $user_xp = cookie('user_xp');
         $user_name = cookie('user_name');
         if (empty($user_xp))
         {
             $this->error("请登录admin",'../login/Login/login');
         }

         if (empty($user_name))
         {
             $this->error("请登录admin",'../login/Login/login');
         }
         $login = Db::table('user')->where('user_xp',$user_xp)->where('user_name',$user_name)->find();
         if (empty($login))
         {
             $this->error("操作错误",'../login/Login/login');
         }
     }

     public function article_manage()
     {
            $this->user_login();
            $this->admin();
            $data = Db::table('article')->order(['article_time'=>'desc','paixu'=>'asc'])->paginate(6,true);
            $page = Db::table('article')->order(['article_time'=>'desc','paixu'=>'asc'])->paginate(6,true);
            $this->view->assign('data',$data);
            $this->view->assign('page',$page);
            return  $this->view->fetch();
     }

     public function article_add()
     {
         $this->user_login();
         dump($_POST);
         $param = input('post.');
         $data = ['article_name' => $param["article_name"],'article_ip' => $param["article_ip"],'user_id' => $param["user_id"],'paixu' => $param["paixu"],'article_content' => $param["article_content"]];
         if (Db::table('article')->insert($data))
         {
             return $this->success('添加成功','article_manage');
         }
         else{
             return $this->success('添加失败请重新操作','article_manage');
         }
         return;
     }

     public function article_delete()
     {
         $this->user_login();
       if (Db::table('article')->where('article_id',$_GET["article_id"])->delete())
        {
          return $this->success('删除成功请刷新查看','article_manage');
        }
        else
        {
          return $this->success('删除失败请重新操作','article_manage');
        }
     }

    public function article_select()
    {
        $this->user_login();
        $this->admin();
        $data = Db::table('article')->where('article_id',$_GET["article_id"])->find();
        if (empty($data))
        {
            return $this->error('查找失败');
        }
        else
        {
            $this->assign('data',$data);
            return $this->fetch();
        }
    }

    public function article_update()
    {
        $this->user_login();
        if (empty($_POST["editorValue"]))
        {
            if (Db::table('article')->where('article_id', $_POST["article_id"])->update(['article_name'=>$_POST["article_name"],'article_ip'=>$_POST["article_ip"],'paixu'=>$_POST["paixu"],'article_message'=>$_POST["article_message"]]))
            {
                return $this->success('修改成功','article_manage');
            }
            else {
                return $this->error('修改失败', 'article_manage');
            }
        }
        else{
            if (Db::table('article')->where('article_id', $_POST["article_id"])->update(['article_name'=>$_POST["article_name"],'article_ip'=>$_POST["article_ip"],'paixu'=>$_POST["paixu"],'article_message'=>$_POST["article_message"],'article_content'=>$_POST["editorValue"]]))
            {
                return $this->success('修改成功','article_manage');
            }
            else {
                return $this->error('修改失败', 'article_manage');
            }
        }
    }

    public function article_list()
    {
        $this->admin();
        $one = Db::table('article')->order('paixu')->limit(1)->select();
        $data = Db::table('article')->order('paixu')->limit(10)->select();

        $this->view->one_name = $one[0]["article_name"];
        $this->view->one_content = $one[0]["article_message"];
        $this->view->assign('data',$data,'one',$one);
        return $this->view->fetch();
    }

    public function article_xq()
    {
        $this->admin();
        if (empty($_GET["article_id"]))
        {
            $data = Db::table('article')->order('paixu')->limit(1)->select();
            $this->assign('data',$data[0]);
            return $this->fetch();
        }
        else
        {
            $data = Db::table('article')->where('article_id',$_GET["article_id"])->select();
            $this->assign('data',$data[0]);
            return $this->fetch();
        }
    }

    public function article_ip()
    {
        $this->admin();
        $ip_class=array();
        $ip_class["article_ip"]=$_GET["article_ip"];
        switch ($_GET["article_ip"])
        {
            case "趣事与游记":
                $ip_class["bg_url"]='small-b-icon1';
                break;
            case "创作日记":
                $ip_class["bg_url"]='small-b-icon3';
                break;
            case "专业知识":
                $ip_class["bg_url"]='small-b-icon2';
                break;
            case "学习日志":
                $ip_class["bg_url"]='small-b-icon4';
                break;
        }
        $tj_article = Db::table('article')->where('article_ip',$_GET["article_ip"])->order(['article_time'=>'desc','paixu'=>'asc'])->limit(4)->select();
        if (count($tj_article)<4)
        {
            $tj_article = Db::table('article')->order(['article_time'=>'desc','paixu'=>'asc'])->limit(4)->select();
        }

        $data = Db::table('article')->where('article_ip',$_GET["article_ip"])->order(['article_time'=>'desc','paixu'=>'asc'])->paginate(10,true);
        $page = Db::table('article')->where('article_ip',$_GET["article_ip"])->order(['article_time'=>'desc','paixu'=>'asc'])->paginate(10,true);
        $this->view->assign('ip_class',$ip_class);
        $this->view->assign('data',$data);
        $this->view->assign('page',$page);
        $this->view->assign('tj_article',$tj_article);
        return  $this->view->fetch();
    }
}