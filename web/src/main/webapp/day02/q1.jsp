<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>q1.jsp</title>
 <style>
        #side{
            position: relative;
            top: -400px;
            left: 1300px;
            width: 180px;
            height: 380px;
            box-shadow: 2px 2px 6px 1px gray;
        }

    </style>
</head>
<body>

<%

String[] mainArray = {"https://static.coupangcdn.com/ha/cmg_paperboy/image/1681955456019/C1_PC1.jpg",
                 "https://static.coupangcdn.c%om/ta/cmg_paperboy/image/1681983238643/230421_C1-%EB%B9%85%EC%8B%9C%EC%A6%8C-%EAB0%80%EC%A0%95%EC%9D%98%EB%8B%AC_SMD-27537_PC-1.png",
                 "https://image7.coupangcdn.com/image/ccm/banner/134e730dd30808ccda9a76f09d42f200.jpg",
                 "https://static.coupangcdn.com/fa/cmg_paperboy/image/1681710671581/%5BPC%5DC1_crop.png",
                 "https://static.coupangcdn.com/za/cmg_paperboy/image/1681973045245/230421_C1_%EC%8B%9D%ED%92%88-%EA%B3%BC%EC%9E%90%EC%84%B8%ED%8A%B8-%EC%84%B8%EC%9D%BC_SMD-27539_PC.jpg",
                 "https://static.coupangcdn.com/la/cmg_paperboy/image/1681973076795/230421_C1_%EB%B7%B0%ED%8B%B0-%EB%A9%94%EA%B0%80%EB%B7%B0%ED%8B%B0%EC%87%BC_SMD-27534_PC.jpg"};

String main = "";
int i = 0;

	main = mainArray[i++];

	if(i==mainArray.length){
		i = 0;	
	}
		
try {
     Thread.sleep(2000);
} catch (InterruptedException e){
     e.printStackTrace();
}


%>

	



<div id="main">
<img src="<%=main%>" alt="" id="main1" />
</div>

<div id="side">
<img src="https://static.coupangcdn.com/ua/cmg_paperboy/image/1681973019760/230421_C1-%EB%B9%85%EC%8B%9C%EC%A6%8C-%EA%B0%80%EC%A0%95%EC%9D%98%EB%8B%AC_SMD-27537_BOX.png" alt="가정의 달 특가" id="img1"  onmouseover="main1.src='https://static.coupangcdn.com/ha/cmg_paperboy/image/1681955456019/C1_PC1.jpg'"  /> <br />
<img src="https://static.coupangcdn.com/ga/cmg_paperboy/image/1681973082926/230421_C1_%EB%B7%B0%ED%8B%B0-%EB%A9%94%EA%B0%80%EB%B7%B0%ED%8B%B0%EC%87%BC_SMD-27534_ITEM.jpg" alt="메가 뷰티쇼 기간한정 1+1" id="img2"   onmouseover="main1.src='https://static.coupangcdn.com/ta/cmg_paperboy/image/1681983238643/230421_C1-%EB%B9%85%EC%8B%9C%EC%A6%8C-%EA%B0%80%EC%A0%95%EC%9D%98%EB%8B%AC_SMD-27537_PC-1.png'"  /> <br />
<img src="https://static.coupangcdn.com/xa/cmg_paperboy/image/1681710675187/%5BPC%5DC1_item.png" alt="비타 500 ZERO" id="img3"  onmouseover="main1.src='https://image7.coupangcdn.com/image/ccm/banner/134e730dd30808ccda9a76f09d42f200.jpg'"  /><br />
<img src="https://image6.coupangcdn.com/image/ccm/banner/d97a8694485c4399771ef7b66dd1e837.jpg" alt="득템찬스 쟁여두기" id="img4"  onmouseover="main1.src='https://static.coupangcdn.com/fa/cmg_paperboy/image/1681710671581/%5BPC%5DC1_crop.png'"  /><br />
<img src="https://static.coupangcdn.com/ca/cmg_paperboy/image/1681874434606/C1_PC2.jpg" alt="펩시 제로 슈거 망고향" id="img5" onmouseover="main1.src='https://static.coupangcdn.com/za/cmg_paperboy/image/1681973045245/230421_C1_%EC%8B%9D%ED%92%88-%EA%B3%BC%EC%9E%90%EC%84%B8%ED%8A%B8-%EC%84%B8%EC%9D%BC_SMD-27539_PC.jpg'" /><br />
<img src="https://static.coupangcdn.com/ba/cmg_paperboy/image/1681973051565/230421_C1_%EC%8B%9D%ED%92%88-%EA%B3%BC%EC%9E%90%EC%84%B8%ED%8A%B8-%EC%84%B8%EC%9D%BC_SMD-27539_BOX.png" alt="과자세트 세일" id="img6" onmouseover="main1.src='https://static.coupangcdn.com/la/cmg_paperboy/image/1681973076795/230421_C1_%EB%B7%B0%ED%8B%B0-%EB%A9%94%EA%B0%80%EB%B7%B0%ED%8B%B0%EC%87%BC_SMD-27534_PC.jpg'" />
</div>

</body>
</html>