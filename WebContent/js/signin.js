$(function(){
	initFormValidator();
});
function initFormValidator() {
	$('form').bootstrapValidator({
		container: 'tooltip',
		message:'This value is not valid',
		feedbackIcons:{
			valid:'glyphicon glyphicon-ok',
			invalid:'glyphicon glyphicon-remove',
			validating: 'glyphicon glyphicon-refresh'
		},
		fields:{
			username:{
				message:'用户名验证失败',
				validators:{
					notEmpty:{
						message:'用户名不能为空'
					},
					regexp:{
						regexp: /^[a-zA-Z0-9_]+$/,
	                    message: '用户名只能包含字母、数字和下划线'
					}
				}
			},
			password:{
				message:'密码验证失败',
				validators:{
					notEmpty:{
						message:'密码不能为空'
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
