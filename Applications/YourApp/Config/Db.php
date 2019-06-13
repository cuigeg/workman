<?php
namespace Config;
/**
 * mysql配置
 * @author walkor
 */
class Db
{
    /**
     * 数据库的一个实例配置，则使用时像下面这样使用
     * $user_array = Db::instance('user')->select('name,age')->from('users')->where('age>12')->query();
     * 等价于
     * $user_array = Db::instance('user')->query('SELECT `name`,`age` FROM `users` WHERE `age`>12');
     * @var array
     */
    public static $homestead = array(
        'host' => '192.168.10.10',
        'port' => '3306',
        'dbname' => 'im',
        'user' => 'homestead',
        'password' => 'secret',
        'charset'  => 'utf8',
    );
}