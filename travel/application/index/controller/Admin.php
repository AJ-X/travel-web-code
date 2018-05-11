<?php
namespace app\index\controller;
use think\Controller;
use think\View;
use think\Db;
class Admin extends Controller{
	public function index(){
		return $this->fetch();
	}

	public function fangjianliebiao(){
		$re=Db::query("select * from travel_jiudian");
		$this->assign('re',$re);
		return $this ->fetch();
	}

	public function tianjiafangjian(){
		return $this ->fetch();
	}

	public function fangjiantianjia(){
		$file = request()->file('pic');
    	$info = $file->move('static/jiudian/images');
		$pic=$info->getSaveName();
		$data = [       								//接受传递的参数  
                'name' => input('name'),  
                'money' => input('money'),
                'pic' => $pic,
            ];
        if(Db::table('travel_jiudian')->insert($data)){        //添加数据  
   			$this->success('添加成功!',url('fangjianliebiao')); 			//成功后跳转   
   			}else{  
   			$this->error('添加失败!'); 
   			}
	}


	public function fangjianxiugai($id){
		$file = request()->file('pic');
    	$info = $file->move('static/jiudian/images');
		$pic=$info->getSaveName();
		$data = [       								//接受传递的参数  
                'name' => input('name'),  
                'money' => input('money'),
                'pic' => $pic,
            ];
            // dump($data);
            // dump($id);
            $shu=Db::table('travel_jiudian')->where('id',$id)->update($data);
            if($shu>0)
            {
            	$this->success('修改成功!',url('fangjianliebiao'));
            }else{
            	$this->error('修改失败!');
            }
	}

	public function shanchufangjian($id){
		Db::table('travel_jiudian')->where('id',$id)->delete();
	}

	public function xiugaifangjian($id){
        $re=Db::table('travel_jiudian')->where('id',$id)->find();
        $this->assign('re',$re);
        //dump($id);
		return $this->fetch();
	}

	public function jiudianyuding(){
		$re=Db::query("select * from travel_jiudianyuding");
		//dump($re);
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function jingdianyuding(){
		$re=Db::query("select * from travel_jingdianyuding");
		//dump($re);
		$this->assign('re',$re);
		return $this->fetch();
	}

	public function yudingchenggong($id){
		$re=Db::table('travel_jingdianyuding')->where('id',$id)->update(['zhuangtai'=>'预定成功']);
            if($re>0)
            {
            	$this->success('审核成功!',url('jingdianyuding'));
            }else{
            	$this->error('审核失败!');
            }
	}

	public function yudingshibai($id){
		$re=Db::table('travel_jingdianyuding')->where('id',$id)->update(['zhuangtai'=>'预定失败']);
            if($re>0)
            {
            	$this->success('审核成功!',url('jingdianyuding'));
            }else{
            	$this->error('审核失败!');
            }
	}

	public function shanchuliuyan($id){
		//dump($id);
		Db::table('travel_liuyan')->where('id',$id)->delete();
	}

	public function liuyanliebiao(){
		$re=Db::query("select * from travel_liuyan");
		//dump($re);
		$this->assign('re',$re);
		return $this ->fetch();
	}

	
}