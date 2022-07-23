<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title> ���Ϻ����� </title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
	.container {width:50%}
	label {font-weight:bold}
	fieldset {border:1px solid #9e9e9e; padding:50px}
	legend {test-align:center; width:auto; padding:10px}
</style>
</head>
<body>
	<div class="container mt-5">
		<form class="form-horisontal" method="post" action="mailSend.jsp">
			<fieldset>
				<legend><strong>�����ۼ�</strong></legend>
				
				<div class="form-group">
					<label class="control-label" for="sender">������ �ּ�<font color='red'>*</font></label>
					<input type="text" name="sender" id="sender" class="form-control"
						               placeholder="������ ���� �̸��� �ּҸ� �Է��ϼ���" required>
				</div>
				
				<div class="form-group">
					<label class="control-label" for="receiver">�޴� �ּ�<font color='red'>*</font></label>
					<input type="text" name="receiver" id="receiver" class="form-control"
						               placeholder="�޴� ���� �̸��� �ּҸ� �Է��ϼ���" required>
				</div>
				
				<div class="form-group">
					<label class="control-label" for="subject">���� ����<font color='red'>*</font></label>
					<input type="text" name="subject" id="subject" class="form-control"
						               placeholder="�̸����� ������ �Է��ϼ���" required>
				</div>
				
				<div class="form-group">
					<label class="control-label" for="content">���� �Է�<font color='red'>*</font></label>
					<textarea rows="5" name="content" id="content" class="form-control" required></textarea>
				</div>
				
				<div class="form-actions text-left">
					<input type="submit" class="btn btn-primary" value="���Ϻ�����">
					<input type="reset" class="btn btn-danger" value="�ٽ� �ۼ�">
				</div>
			</fieldset>
		</form>
	</div>
</body>
</html>