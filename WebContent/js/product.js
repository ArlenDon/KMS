$(function(){
	initFormValidator();
});
function initFormValidator() {
	$('form').bootstrapValidator({
		group: '.rowGroup',
		message:'This value is not valid',
		fields:{
			productTitle:{
				message:'成果名称验证失败',
				validators:{
					notEmpty:{
						message:'成果名称不能为空'
					}
				}
			},
			productAuthors:{
				message:'成果完成人验证失败',
				validators:{
					notEmpty:{
						message:'请选择成果完成人'
					}
				}
			},
			productUnits:{
				message:'完成单位验证失败',
				validators:{
					notEmpty:{
						message:'请选择完成单位'
					}
				}
			},
			libraryCode:{
				message:'中图分类号验证失败',
				validators:{
					notEmpty:{
						message:'中图分类号不能为空'
					},
					regexp: {
                        regexp: /^([A-Z]{1,2}\d+(.\d+)?)(,[A-Z]{1,2}\d+(.\d+)?)*$/,
                        message: '中图分类号格式不正确，如A121'
                    }
				}
			},
			subjectCode:{
				message:'学科分类号验证失败',
				validators:{
					notEmpty:{
						message:'学科分类号不能为空'
					},
					regexp: {
                        regexp: /^([0-9]{3}.[0-9]{4},?)+$/,
                        message: '学科分类号格式不正确，如520.4020'
                    }
				}
			},
			completionDate:{
				message:'完成日期验证失败',
				validators:{
					notEmpty:{
						message:'请选择完成日期'
					}
				}
			},
			prizeType:{
				message:'获奖类别验证失败',
				validators:{
					notEmpty:{
						message:'请选择获奖类别'
					}
				}
			},
			prizeLevel:{
				message:'获奖级别验证失败',
				validators:{
					notEmpty:{
						message:'请选择获奖级别'
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
			keyword:{
				message:'关键词验证失败',
				validators:{
					notEmpty:{
						message:'关键词不能为空'
					}
				}
			},
			productBrief:{
				message:'成果简介验证失败',
				validators:{
					notEmpty:{
						message:'成果简介不能为空'
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