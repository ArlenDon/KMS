$(function(){
	initFormValidator();
});
function initFormValidator() {
	$('form').bootstrapValidator({
		group: '.rowGroup',
		message:'This value is not valid',
		fields:{
			stdCode:{
				message:'标准号验证失败',
				validators:{
					notEmpty:{
						message:'标准号不能为空'
					},
					regexp: {
                        regexp: /^\d{1,5}-\d{4}$/,
                        message: '标准号格式不正确，如584-2008'
                    }
				}
			},
			typeCode:{
				message:'标准分类号验证失败',
				validators:{
					notEmpty:{
						message:'标准分类号不能为空'
					}
				}
			},
			belongUnit:{
				message:'归口单位验证失败',
				validators:{
					notEmpty:{
						message:'请选择归口单位'
					}
				}
			},
			stdTitle:{
				message:'标准名称验证失败',
				validators:{
					notEmpty:{
						message:'标准名称不能为空'
					}
				}
			},
			langType:{
				message:'语种验证失败',
				validators:{
					notEmpty:{
						message:'请选择语种'
					}
				}
			},
			securityLevel:{
				message:'密级验证失败',
				validators:{
					notEmpty:{
						message:'请选择密级'
					}
				}
			},
			draftUnits:{
				message:'起草单位验证失败',
				validators:{
					notEmpty:{
						message:'请选择起草单位'
					}
				}
			},
			draftAuthors:{
				message:'起草人验证失败',
				validators:{
					notEmpty:{
						message:'请选择起草人'
					}
				}
			},
			releaseUnits:{
				message:'发布(批准)单位验证失败',
				validators:{
					notEmpty:{
						message:'请选择发布(批准)单位'
					}
				}
			},
			
			releaseDate:{
				message:'发布(批准)日期验证失败',
				validators:{
					notEmpty:{
						message:'请选择发布(批准)日期'
					}
				}
			},
			actionDate:{
				message:'实施(试行)日期验证失败',
				validators:{
					notEmpty:{
						message:'请选择实施(试行)日期'
					}
				}
			},
			stdScope:{
				message:'使用范围验证失败',
				validators:{
					notEmpty:{
						message:'使用范围不能为空'
					}
				}
			},
			field:{
				message:'产业领域验证失败',
				validators:{
					notEmpty:{
						message:'请选择产业领域'
					}
				}
			},
			direction:{
				message:'产业方向验证失败',
				validators:{
					notEmpty:{
						message:'请选择产业方向'
					}
				}
			},
			classification:{
				message:'技术分类验证失败',
				validators:{
					notEmpty:{
						message:'请选择技术分类'
					}
				}
			}
			,
			attachment:{
				message:'附件验证失败',
				validators:{
					notEmpty:{
						message:'请选择附件'
					}
				}
			}
		}
	}).on('success.form.bv', function(e) {
        // Prevent form submission
        e.preventDefault();

        // Get the form instance
        var $form = $(e.target);

        // Get the BootstrapValidator instance
        var bv = $form.data('bootstrapValidator');

        // Use Ajax to submit form data
        $.post($form.attr('action'), $form.serialize(), function(result) {
            //console.log(result);
        	alert(result);
        }, 'text');
    });
}