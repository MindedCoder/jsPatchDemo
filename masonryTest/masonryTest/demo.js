require('UIView, UIColor, UILabel,TableViewCell,NSString')

    defineClass('TableViewCell', {
                updateWithData:function(data){
                    console.log('--------------------------');
                    var label = UILabel.alloc().initWithFrame({x:20, y:20, width:100, height:50});
                    label.setText("JSPatch");
                    label.setTextAlignment(1);
                    label.setBackgroundColor(UIColor.redColor());
                    self.mainButton().addSubview(label);
                
                }
    })

                //新增方法
            defineClass('ViewController:UIViewController',{
                    addMethod:function(buttonIndex){
                        console.log('clicked index ' + buttonIndex);
                    }
            })


                //更换cell的方法 ，cell数据越界
    defineClass('ViewController',{
                tableView_cellForRowAtIndexPath:function(tableView,indexPath){
                    var row = indexPath.row();
                    var data = self.dataArray();
                    var cell = tableView.dequeueReusableCellWithIdentifier("cell");
                    if(!cell){
                        cell = TableViewCell.alloc().initWithStyle_reuseIdentifier(0,"cell");
                        cell.setBackgroundColor(UIColor.greenColor());
                    }
//                    console.log('data.count is '+ data.count());
//                    console.log('row is '+ row);
                    if(data.count()>row){
                        cell.updateWithData(data[row]);
                    }
                    return cell;
                
                },
                //跳转
                tableView_didSelectRowAtIndexPath:function(tableView,indexPath){
                
                    var controller = newViewController.alloc().init();
                    console.log('clicked with +'+controller);
                    console.log('new add method avoke');
                    self.addMethod(1)
                    self.navigationController().pushViewController_animated(controller,YES);
                
                }
                
    })


                //增加类ViewController
    defineClass('newViewController:UIViewController',{
                viewDidLoad:function(){
                    self.super().viewDidLoad()
                    self.view().setBackgroundColor(UIColor.grayColor());
                    self.setTitle("测试");
                }
    })
            //关于变量 set get

    defineClass('ViewController',{
                dataSource:function(){
                    var data = [1,2,3,4,5,6,7,8,9];
                    self.setProp_forKey(data,'dataArray');
                    return data;
                },
                
                
                tableView_numberOfRowsInSection:function(tableView,indexPath){
                    self.setDataArray([1,2,3,4,5,6,7,8,9]);
                
                    return self.dataSource().count();
                }
            })

        //struct




        /**
         *  修改系统方法 setter
         */
    defineClass('NSDateFormatter',{
               
//                dateFormat: function() {
//                    if (!__dateFormat) {
//                        __dateFormat = "";
//                    } else {
//                        if (__dateFormat.containsString("YYYY")) {
//                            __dateFormat = __dateFormat.substringFromIndex(4);
//                            __dateFormat = "yyyy".stringByAppendingString(__dateFormat);
//                        }
//                    }
//                    return __dateFormat;
//                }
                
                setDateFormat:function(newDateFormat){
                
                if (newDateFormat.containsString("YYYY")) {
                    var str = 'yyyy';
                    var s = newDateFormat.substringFromIndex(4);
                    var str2=str+s.toJS();
                    self.ORIGsetDateFormat(str2);
                }
            }
    })
    



