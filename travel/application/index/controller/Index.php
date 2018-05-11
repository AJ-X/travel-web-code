<?php
namespace app\index\controller;
use think\Controller;
use think\View;
use think\Db;
use think\Session;
class Index extends Controller
{
    public function index()
    {
        return $this->fetch();
    }

    public function jingdian()
    {
        return $this->fetch();
    }

    public function login()
    {
        return $this->fetch();
    }

    public function denglu(){
    	$data = [       								
                'username' => input('username'),  
                'password' => input('password'),
            ];

        //与数据库数据匹配
        $result=Db::query("select * from travel_user where username='{$data['username']}' and password='{$data['password']}'");
        $result2=Db::query("select * from travel_admin where username='{$data['username']}' and password='{$data['password']}'");

        if ($result){
            session('user',$data['username']); 
            Session::set('name',$data['username']);       
        	$this->success('登陆成功!',url('indexdl'));
        }
        elseif ($result2) {
        	session('user',$data['username']);  
            $time=time();
            session('time',$time);       
        	$this->success('登陆成功!',url('admin/index'));
        }
        else{
        	$this->error('登陆失败!');
        }
    }

    public function indexdl()
    {
        return $this->fetch();
    }

    public function jingdiandl()
    {
        return $this->fetch();
    }

    public function register()
    {
        return $this->fetch();
    }

    public function zhuce(){
    	$data = [       								  
                'username' => input('username'),  
                'password' => input('password'),
            ]; 

            //将注册信息插入数据库      	
			if(Db::table('travel_user')->insert($data)){          
   				$this->success('注册成功!',url('login'));
   			}else{  
   				$this->error('注册失败!'); 
   			}
    }

    public function jiudian(){
    	$re=Db::table('travel_jiudian')->select();
    	//dump($data);
    	$this->assign('re',$re);
    	return $this->fetch();
    }

    public function jiudiandl(){
    	$re=Db::table('travel_jiudian')->select();
    	//dump($data);
    	$this->assign('re',$re);
    	return $this->fetch();
    }


    //搜索景点并显示
    public function jingdiansousuo(){
    	$data=input('sousuo');
    	$re=Db::table('travel_jingdian')->where('name|address|type','like','%'.$data.'%')->select();
    	$this->assign('re',$re);
    	return $this->fetch();
    }

    public function jingdiansousuodl(){
    	$data=input('sousuo');
    	$re=Db::table('travel_jingdian')->where('name|address|type','like','%'.$data.'%')->select();
    	$this->assign('re',$re);
    	return $this->fetch();
    }


    public function jingdianyuding($id){
    	$name=Db::table('travel_jingdian')->where('id',$id)->value('name');
    	$username=Session::get('name');  
    	$time=time();	
    	$data=[
    		'username'=>$username,
    		'name'=>$name,
    		'time'=>$time,
    	];
    	if(Db::table('travel_jingdianyuding')->insert($data)){          
   				$this->success('景点门票预定成功!',url('jingdiandl'));  
   			}else{  
   				$this->error('预定失败!'); 
   			}
    }

    public function jiudianyuding($id){
    	$name=Db::table('travel_jiudian')->where('id',$id)->value('name');
    	$username=Session::get('name');   
    	$time=time();	
    	$data=[
    		'username'=>$username,
    		'name'=>$name,
    		'time'=>$time,
    	];
    	//dump($data);
    	if(Db::table('travel_jiudianyuding')->insert($data)){          
   				$this->success('酒店预定成功!',url('jiudiandl'));  
   			}else{  
   				$this->error('预定失败!'); 
   			}
    }

    public function liuyanban(){
        return $this->fetch();
    }

    public function tijiaoliuyan(){
        $time=time();
        $data = [                                       
                'username' => input('username'),  
                'phone' => input('phone'),
                'message'=>input('message'),
                'time'=>$time,
            ];

        // dump($data);
        if(Db::table('travel_liuyan')->insert($data)){          
                $this->success('留言成功!',url('gerenzhongxin'));  
            }else{  
                $this->error('留言失败!'); 
            }
    }

    public function gerenzhongxin(){
        $username=Session::get('name');
        $data=Db::table('travel_jiudianyuding')->where('username',$username)->select();
        $data1=Db::table('travel_jingdianyuding')->where('username',$username)->select();
        $data2=Db::table('travel_liuyan')->where('username',$username)->select();
        //dump($data2);
        $this->assign('da',$data);
        $this->assign('da1',$data1);
        $this->assign('da2',$data2);
        return $this->fetch();
    }
}
