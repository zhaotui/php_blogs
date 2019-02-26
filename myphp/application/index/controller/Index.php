<?php
namespace app\index\controller;
use think\Controller;
use think\Db;

class Index extends Controller
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

    public function index()
    {
        $this->admin();
        $data = Db::table('article')->where('prope',1)->limit(4)->order('paixu')->select();
        $this->view->assign('data',$data);
        return $this->view->fetch();
    }

    public function islogin()
    {
        $user_xp = Cookie('user_xp');
        $user_name = Cookie('user_name');

        if (empty($user_xp)){
            $this->error('admin请登录','login/Login/login');
        }

        if (empty($user_name)){
            $this->error('admin请登录','login/Login/login');
        }

        $data = Db::table('user')->where('user_xp',$user_xp)->find();

        if ($user_name !== $data['user_name'])
        {
            $this->error('admin请登录','login/Login/login');
        }
        else{
            $this->success('欢迎admin');
        }
    }
}
