<?php
namespace app\message\controller;
use think\Controller;
use think\Db;
/**
 * Created by PhpStorm.
 * User: HASEE
 * Date: 2018/11/28
 * Time: 11:36
 */
class Message extends Controller
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

    public function message_manage()
    {

        $this->user_login();
        $this->admin();
        $data = Db::table('stay_message')->order(['message_stay_time'=>'desc'])->paginate(6,true);
        $page = Db::table('stay_message')->order(['message_stay_time'=>'desc'])->paginate(6,true);
        $this->view->assign('data',$data);
        $this->view->assign('page',$page);
        return  $this->view->fetch();
    }

    public function message_select()
    {
        $this->user_login();
        $this->admin();
        $data = Db::table('stay_message')->where('stay_id',$_GET["stay_id"])->find();
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

    public function message_delete()
    {
        $this->user_login();
        if (Db::table('stay_message')->where('stay_id',$_GET["stay_id"])->delete())
        {
            return $this->success('删除成功请刷新查看','message_manage');
        }
        else
        {
            return $this->success('删除失败请重新操作','message_manage');
        }
    }

    public function message_add()
    {
        $data = $_POST;
        if (empty($data["stay_title"]))
        {
           return $this->error('请输入留言标题','../article/Article/article_xq');
        }
        if (empty($data["stay_name"]))
        {
            return $this->error('请输入你的名字','../article/Article/article_xq');
        }
        if (empty($data["stay_phone"]))
        {
            return $this->error('请输入你的电话','../article/Article/article_xq');
        }
        else if (!preg_match("/^1[345678]{1}\d{9}$/",$data["stay_phone"]))
        {
            return $this->error('号码格式不正确','../article/Article/article_xq');
        }
        if (empty($data["message_content"]))
        {
            return $this->error('请输入留言内容','../article/Article/article_xq');
        }
        $message = ['stay_title' => $data["stay_title"], 'stay_name' => $data["stay_name"],'stay_phone' => $data["stay_phone"],'message_content' => $data["message_content"]];
        if (Db::table('stay_message')->insert($message))
        {
            return $this->success('留言成功','../article/Article/article_xq');
        }
        else
        {
            return $this->error('留言失败','../article/Article/article_xq');
        }

    }
}