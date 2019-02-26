<?php

/**
 * Created by PhpStorm.
 * User: HASEE
 * Date: 2018/11/26
 * Time: 9:32
 */
namespace app\login\controller;
use think\Controller;
use think\Db;

class Login extends Controller
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

      public function login()
      {
          $this->admin();
          return view();
      }
      public function islogin()
      {
          $param = input('post.');

          if(empty($param['user_name'])){

              $this->error('用户名不能为空');
          }

          if(empty($param['user_password'])){

              $this->error('密码不能为空');
          }

          // 验证用户
          $has = Db::table('user')->where('user_name',$param['user_name'])->find();
          if(empty($has)){
              $this->error('用户名密码错误');
          }
          //验证密码
          if ($param['user_password'] !== $has["user_password"])
          {
              $this->error('用户名密码错误');
          }

          // 记录用户登录信息
          cookie('user_xp', $has['user_xp'], 3600);  // 一个小时有效期
          cookie('user_name', $has['user_name'], 3600);

          $this->redirect(url('./index/index'));

      }
}