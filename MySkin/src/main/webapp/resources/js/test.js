Survey
    .StylesManager
    .applyTheme("modern");

var json = {
	    "progressBarType": "buttons",
	    "showProgressBar": "top",
		"goNextPageAutomatic": true,
	    "showNavigationButtons": false,
	    "pages": [
	        {
	            "navigationTitle": "지성 vs 건성",
	            "navigationDescription": "O/D",
	            "questions": [
			                {
		                    "type": "radiogroup",
		                    "name": "od1",
		                    "title": username + "님은 세안제 사용 후 아무것도 바르지 않고 2~3시간 후에 밝은 빛 아래서 거울을 보면 이마와 볼이 어떤가요?",
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "매우 거칠고, 각질이 있어요."
		                        }, {
		                            "value": 2,
		                            "text": "당겨요."
		                        }, {
		                            "value": 3,
		                            "text": "당기지도 않고 건조해 보이지도 않고 번들거리지도 않아요."
		                        }, {
		                            "value": 4,
		                            "text": "빛에 반사되는 것처럼 번들거려요."
		                        }, {
		                            "value": 2.5,
		                            "text": "세안제를 쓰지 않아요.(쓰지 않는 이유가 1번이라면 1번!)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od2",
		                    "visibleIf": "{od1} notempty",
		                    "title": username + "님은 평소에 얼굴 사진을 찍으면 피부가 번들거려 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음...그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는거 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od3",
		                    "visibleIf": "{od2} notempty",
		                    "title": "메이크업 파운데이션(파우더는 안바른 상태)을 바르고 2~3시간이 지나면 화장상태가 어떤가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "약간 들떠 보이고 주름진 부분이 나타나요."
		                        }, {
		                            "value": 2,
		                            "text": "부드러워 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "번들거려요."
		                        }, {
		                            "value": 4,
		                            "text": "고정이 안되고 번들거려요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 페이셜 파운데이션을 바르지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od4",
		                    "visibleIf": "{od3} notempty",
		                    "title": "얼굴을 가까이서 보았을 때, 모공이 많고 크기가 커 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "아니요."
		                        }, {
		                            "value": 2,
		                            "text": "이마와 코는 그렇게 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "많이 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "엄청 많이 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od5",
		                    "visibleIf": "{od4} notempty",
		                    "title": "피부타입을 뭐라고 생각하세요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "건성이라고 생각해요."
		                        }, {
		                            "value": 2,
		                            "text": "중성이라고 생각해요."
		                        }, {
		                            "value": 3,
		                            "text": "복합성(건성+지성)이라고 생각해요."
		                        }, {
		                            "value": 4,
		                            "text": "지성이라고 생각해요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 페이셜 파운데이션을 바르지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od6",
		                    "visibleIf": "{od5} notempty",
		                    "title": "거품이 많이 나는 비누를 사용하면 피부가 어떻게 되나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "건조하고 갈라져요."
		                        }, {
		                            "value": 2,
		                            "text": "약간 건조하지만 갈라지지는 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "아무렇지 않아요."
		                        }, {
		                            "value": 4,
		                            "text": "유분기가 금방 올라와요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 비누나 거품이 나는 클렌저를 사용하지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od7",
		                    "visibleIf": "{od6} notempty",
		                    "title": "화이트헤드나 블랙헤드가 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 안생겨요."
		                        }, {
		                            "value": 3,
		                            "text": "가끔씩 생겨요."
		                        }, {
		                            "value": 4,
		                            "text": "매번 생겨요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od8",
		                    "visibleIf": "{od7} notempty",
		                    "title": "T존(이마와 코)에 번들거리는 느낌이 있나요??",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od9",
		                    "visibleIf": "{od8} notempty",
		                    "title": "평소 모이스처라이저(보습제)를 안 발랐을 때 피부가 당기는 느낌이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "거의 그렇지 않아요."
		                        }, {
		                            "value": 4,
		                            "text": "전혀 그렇지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od10",
		                    "visibleIf": "{od9} notempty",
		                    "title": "날씨가 건조할 때(ex 겨울) 모이스처라이저(보습제)를 바르지 않으면 피부가 어떤가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "건조하고 갈라질 것 같아요."
		                        }, {
		                            "value": 2,
		                            "text": "당김을 느껴요."
		                        }, {
		                            "value": 3,
		                            "text": "아무렇지 않아요."
		                        }, {
		                            "value": 4,
		                            "text": "번들거리고 모이스처라이저(보습제)가 필요 없어요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "od11",
		                    "visibleIf": "{od10} notempty",
		                    "title": "모이스처라이저(보습제)를 바르고 2~3시간이 지나면 볼 피부가 어떤가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "매우 거칠고, 각질이 일어나거나 심하면 떨어지기도 해요."
		                        }, {
		                            "value": 2,
		                            "text": "부드러워요."
		                        }, {
		                            "value": 3,
		                            "text": "조금 번들거려요"
		                        }, {
		                            "value": 4,
		                            "text": "번들거리고 기름져요."
		                        }
		                    ]
		                }
		     		]
			        }, {
			            "navigationTitle": "민감성 vs 저항성",
			            "navigationDescription": "S/R",
						"questions": [
							{
						     "type": "boolean",
						     "name": "sr1",
						     "title": "피부과 의사에게 여드름, 로사이아, 접촉성 피부염, 습진 등의 진단을 받은 적이 있나요?",
						     "isRequired": true
						    },{
						     "type": "boolean",
						     "name": "sr2",
						     "title": "피부전문의 아닌 다른 의사들로부터 위에 증상들을 진단 받으신적 있나요?",
							 "visibleIf": "{sr1} notempty",
						     "isRequired": true
						    }, {
		                    "type": "radiogroup",
		                    "name": "sr3",
		                    "title": "얼굴에 붉은 여드름이 얼마나 있나요?",
							"visibleIf": "{sr2} notempty",
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "전혀 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 없어요."
		                        }, {
		                            "value": 3,
		                            "text": "최소 한달에 한 번 정도 생겨요."
		                        }, {
		                            "value": 4,
		                            "text": "빛에 반사되는 것처럼 번들거려요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr4",
		                    "visibleIf": "{sr3} notempty",
		                    "title": "스킨케어 제품(클렌저, 모이스처라이저, 토너, 메이크업 등)을 사용했을 때 얼굴에 뭔가 나고, 발진이나, 가렵고 쏘는듯한 증상이 나타나나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 그렇지 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그래요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 제품을 사용하지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr5",
		                    "visibleIf": "{sr4} notempty",
		                    "title": "여드름이나 로사리아로 진단을 받으러 병원을 간 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "진단을 받지 않았어요."
		                        }, {
		                            "value": 2,
		                            "text": "친구들이나 지인들이 저한테 있다고 말해줬어요."
		                        }, {
		                            "value": 3,
		                            "text": "진단을 받았었어요."
		                        }, {
		                            "value": 4,
		                            "text": "진단을 받았는데 심각하다네요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr6",
		                    "visibleIf": "{sr5} notempty",
		                    "title": "24K 금(순금)이 아닌 악세사리를 착용했을 때 피부에 발진이 생기나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 생기지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 생기지 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 생겨요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 생겨요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr7",
		                    "visibleIf": "{sr6} notempty",
		                    "title": "자외선 차단제를 사용했을 때 피부가 가렵거나 타는 듯한 느낌이 들거나, 붉어진다거나, 여드름이 생기나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 생기지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 생기지 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 생겨요"
		                        }, {
		                            "value": 4,
		                            "text": "항상 생겨요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr8",
		                    "visibleIf": "{sr7} notempty",
		                    "title": "혹시 아토피, 습진 또는 접촉성 피부염으로 진단을 받으러 병원을 간 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "진단을 받지 않았어요."
		                        }, {
		                            "value": 2,
		                            "text": "친구들이나 지인들이 저한테 있다고 말해줬어요."
		                        }, {
		                            "value": 3,
		                            "text": "진단을 받았었어요."
		                        }, {
		                            "value": 4,
		                            "text": "진단을 받았는데 심각하다네요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr9",
		                    "visibleIf": "{sr8} notempty",
		                    "title": "반지를 낀 자리에 발진이 얼마나 생기나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 생기지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 생기지 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 생겨요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 생겨요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 반지를 안끼는데요?"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr10",
		                    "visibleIf": "{sr9} notempty",
		                    "title": "향기나는 거품입욕제, 마사지 오일, 바디로션을 사용했을 때 피부가 간지럽거나 트러블이 생기거나 건조해지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 그렇지 않아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그래요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 이 제품들을 사용하지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr11",
		                    "visibleIf": "{sr10} notempty",
		                    "title": "숙박업소에서 제공되는 세안제나 바디워시를 사용하면 문제가 생기지는 않나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "네 괜찮아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 거의 안생기는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "피부가 간지럽거나 붉어지거나 발진이 생겨요."
		                        }, {
		                            "value": 4,
		                            "text": "사용하지 않아요. 전에 문제를 겪었거든요."
		                        }, {
		                            "value": 2.5,
		                            "text": "따로 제 것을 가지고 다녀서 잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr12",
		                    "visibleIf": "{sr11} notempty",
		                    "title": "가족 중에 아토피, 습진, 알레르기, 천식을 가지고 있는 사람이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "한 명 정도 있어요."
		                        }, {
		                            "value": 3,
		                            "text": "몇 명 있어요."
		                        }, {
		                            "value": 4,
		                            "text": "많이 있어요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr13",
		                    "visibleIf": "{sr12} notempty",
		                    "title": "향기나는 세탁세제를 사용하거나, 빨리 건조기에 사용하는 정전기 방지 시트를 사용한 옷을 입으면 피부가 어떻게 되나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "문제 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "약간 건조해요."
		                        }, {
		                            "value": 3,
		                            "text": "가려워요."
		                        }, {
		                            "value": 4,
		                            "text": "가렵고 발진이 생겨요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr14",
		                    "visibleIf": "{sr13} notempty",
		                    "title": "운동, 스트레스, 격한 감정(화날 때 등)로 얼굴과 목이 빨개지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr15",
		                    "visibleIf": "{sr14} notempty",
		                    "title": "술을 마시면 피부가 빨개지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 술을 안마셔요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr16",
		                    "visibleIf": "{sr15} notempty",
		                    "title": "맵거나 뜨거운 음식이나 뜨거운 음료를 마시면 얼굴이 빨개지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 매운 음식을 안먹어요. (먹지 않는 이유가 얼굴이 빨개져서라면? 4번!)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr17",
		                    "visibleIf": "{sr16} notempty",
		                    "title": "얼굴에 눈에 띄는 붉은색, 푸른색 혈관이 얼마나 많이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "거의 없어요. (1~3개 정도)"
		                        }, {
		                            "value": 3,
		                            "text": "조금 있어요. (4~6개 정도)"
		                        }, {
		                            "value": 4,
		                            "text": "많이 있어요. (7개 이상)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr18",
		                    "visibleIf": "{sr17} notempty",
		                    "title": "사진을 찍으면 얼굴이 빨갛게 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr19",
		                    "visibleIf": "{sr18} notempty",
		                    "title": "햇볕에 타지 않았는데도 햇볕에 탔냐고 사람들이 물어보나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "그런적 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 항상 햇볕에 타있어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "sr20",
		                    "visibleIf": "{sr19} notempty",
		                    "title": "화장을 하거나, 자외선 차단제를 바르거나, 스킨케어 제품을 사용하면 피부가 가렵거나, 붓거나, 빨개지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 질문에 나와있는 제품을 사용하지 않아요. (사용하지 않는 이유가 질문에 나온 증상때문이라면 4번!)"
		                        }
		                    ]
		                }
		     		]
			        }, {
			            "navigationTitle": "색소침착 vs 비색소성",
			            "navigationDescription": "P/N",
						"questions": [
			                {
						     "type": "boolean",
						     "name": "pn1",
						     "title": "햇볕을 받은 부분에 다크스팟(기미, 주근깨, 색소침착)이 생기나요?",
						     "isRequired": true
						    }, {
		                    "type": "radiogroup",
		                    "name": "pn2",
		                    "title": "여드름이나 피부 속을 파고 들어간 모발(털) 때문에 짙은 갈색이나 검은색 피부침착이 생긴적이 있나요?",
							"visibleIf": "{pn1} notempty",
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 그럴 때도 있는 것 같아요."
		                        }, {
		                            "value": 3,
		                            "text": "자주 그러는 것 같아요."
		                        }, {
		                            "value": 4,
		                            "text": "항상 그래요."
		                        }, {
		                            "value": 2.5,
		                            "text": "그런 모발이나 털이 없어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn3",
		                    "visibleIf": "{pn2} notempty",
		                    "title": "상처가 났을 때, 갈색의 상처 자국이 얼마나 오래 남나요?(분홍색은 아니에요!)",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "저는 그런 상처 자국이 생기지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "1주일 정도 남아요."
		                        }, {
		                            "value": 3,
		                            "text": "몇 주 정도 남아요."
		                        }, {
		                            "value": 4,
		                            "text": "몇 달 정도 남아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn4",
		                    "visibleIf": "{pn3} notempty",
		                    "title": "임신을 했거나, 피임약을 복용했거나, 호르몬 대체 요법을 받았을 때 얼굴에 색소침착된 부분이 있었나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 그렇지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "1주일 정도 남아요."
		                        }, {
		                            "value": 3,
		                            "text": "몇 주 정도 남아요."
		                        }, {
		                            "value": 4,
		                            "text": "몇 달 정도 남아요."
		                        }, {
		                            "value": 2.5,
		                            "text": "이 질문은 저한테 해당되지 않아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn5",
		                    "visibleIf": "{pn4} notempty",
		                    "title": "윗 입술이나 양쪽 볼에 다크스팟(기미, 주근깨, 색소침착)이 있거나 있었던 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 잘 모르겠어요."
		                        }, {
		                            "value": 3,
		                            "text": "약간 있어요."
		                        }, {
		                            "value": 4,
		                            "text": "여러군데 있어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn6",
		                    "visibleIf": "{pn5} notempty",
		                    "title": "햇볓에 오래 있으면 다크스팟(기미, 주근깨, 색소침착)이 더 진해지나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "저는 다크스팟이 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "음... 잘 모르겠어요."
		                        }, {
		                            "value": 3,
		                            "text": "약간 심해져요."
		                        }, {
		                            "value": 4,
		                            "text": "많이 심해져요."
		                        }, {
		                            "value": 2.5,
		                            "text": "저는 선크림을 매일 바르고 햇빛을 보지 않아요.(다크채피 생길까봐 항상 선크림을 바른다면 4번)!"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn7",
		                    "visibleIf": "{pn6} notempty",
		                    "title": "얼굴에 다크패치(기미, 주근깨, 색소침착)가 있다고 진단 받았던 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "받은 적이 있지만"
		                        }, {
		                            "value": 2,
		                            "text": "약간 있어요. (1~5개)"
		                        }, {
		                            "value": 3,
		                            "text": "많이 있어요. (6~15개)"
		                        }, {
		                            "value": 4,
		                            "text": "엄청 많이 있어요. (16개 이상)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn8",
		                    "visibleIf": "{pn7} notempty",
		                    "title": "얼굴이나 몸, 팔에 작은 갈색 점(주근깨 등)이 있거나 있었던 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "약간 있어요. (1~5개)"
		                        }, {
		                            "value": 3,
		                            "text": "많이 있어요. (6~15개)"
		                        }, {
		                            "value": 4,
		                            "text": "엄청 많이 있어요. (16개 이상)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn9",
		                    "visibleIf": "{pn8} notempty",
		                    "title": "오랜만에 햇볕에 노출되면 피부가 어떻게 되나요?(햇볕에 잘 있지 않는다면 어릴 때를 떠올려보세요.)",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "빨갛게 그을러져요."
		                        }, {
		                            "value": 2,
		                            "text": "빨갛게 그을러지고나서 까매져요."
		                        }, {
		                            "value": 3,
		                            "text": "점점 더 까매져요."
		                        }, {
		                            "value": 4,
		                            "text": "제 피부는 이미 까맣거나 앞으로 더 까맣게 되기 힘들 것 같아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn10",
		                    "visibleIf": "{pn9} notempty",
		                    "title": "몇일동안 지속적으로 햇볕에 노출되면 어떻게 되나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "빨갛게 그을러지고 물집이 생기지만 피부색은 변화가 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "피부가 조금 까맣게 돼요."
		                        }, {
		                            "value": 3,
		                            "text": "피부가 많이 까맣게 돼요."
		                        }, {
		                            "value": 4,
		                            "text": "제 피부는 이미 까맣거나 앞으로 더 까맣게 되기 힘들 것 같아요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "pn11",
		                    "visibleIf": "{pn10} notempty",
		                    "title": "원래 머리색이 무슨 색인가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "금발이에요."
		                        }, {
		                            "value": 2,
		                            "text": "갈색이에요."
		                        }, {
		                            "value": 3,
		                            "text": "흑발이에요."
		                        }, {
		                            "value": 4,
		                            "text": "붉은색이에요."
		                        }
		                    ]
		                }
		     		]
			        }, {
			            "navigationTitle": "주름진 vs 탱탱한",
			            "navigationDescription": "W/T",
						"questions": [
			                {
						     "type": "boolean",
						     "name": "wt1",
						     "title": "65세 이상인가요?",
						     "isRequired": true
						    }, {
		                    "type": "radiogroup",
		                    "name": "wt2",
		                    "title": "얼굴에 주름이 얼마나 있나요?",
							"visibleIf": "{wt1} notempty",
		                    "choices": [
		                        {
		                            "value": 1,
		                            "text": "전혀 없어요."
		                        }, {
		                            "value": 2,
		                            "text": "웃거나 찡그리거나 눈썹을 치켜올리면 생겨요."
		                        }, {
		                            "value": 3,
		                            "text": "평상 시 얼굴에도 약간 있어요."
		                        }, {
		                            "value": 4,
		                            "text": "평상 시 얼굴에도 주름이 있어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt3",
		                    "visibleIf": "{wt2} notempty",
		                    "title": "어머니의 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt4",
		                    "visibleIf": "{wt3} notempty",
		                    "title": "아버지의 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt5",
		                    "visibleIf": "{wt4} notempty",
		                    "title": "외할머니 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt6",
		                    "visibleIf": "{wt5} notempty",
		                    "title": "외할아버지 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt7",
		                    "visibleIf": "{wt6} notempty",
		                    "title": "친할머니의 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt8",
		                    "visibleIf": "{wt7} notempty",
		                    "title": "친할아버지의 피부 나이는 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "5년에서 10년정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년 정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }, {
		                            "value": 2.5,
		                            "text": "적용할 수 없어요. (잘모르겠어요)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt9",
		                    "visibleIf": "{wt8} notempty",
		                    "title": "1년 기준 2주이상 피부를 태웠던 적(태닝, 야외 운동으로 인한 태움 등)이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "1~5년 정도 태웠어요."
		                        }, {
		                            "value": 3,
		                            "text": "5~10년 정도 태웠어요."
		                        }, {
		                            "value": 4,
		                            "text": "10년 넘게 태웠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt10",
		                    "visibleIf": "{wt9} notempty",
		                    "title": "계절에 따라 연간 2주 이상 피부를 태웠던 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "없어요."
		                        }, {
		                            "value": 2,
		                            "text": "1~5년 정도 태웠어요."
		                        }, {
		                            "value": 3,
		                            "text": "5~10년 정도 태웠어요."
		                        }, {
		                            "value": 4,
		                            "text": "10년 넘게 태웠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt11",
		                    "visibleIf": "{wt10} notempty",
		                    "title": "거주지 기준 일상생활 중 하루에 햇빛을 얼마나 받나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "별로 안받아요. (대부분 실내에 머물고, 햇빛을 많이 보는 지역이 아니에요.)"
		                        }, {
		                            "value": 2,
		                            "text": "약간 받아요. (햇빛이 강하지는 않지만, 규칙적으로 해를 보고 살아요.)"
		                        }, {
		                            "value": 3,
		                            "text": "중간정도 받아요. (꽤 많은 양의 햇빛이 있는 곳에서 살아요.)"
		                        }, {
		                            "value": 4,
		                            "text": "많이 받아요. (열대, 남부지역 또는 햇빛이 매우 많은 곳에서 살아요.)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt12",
		                    "visibleIf": "{wt11} notempty",
		                    "title": "피부 나이가 어느정도로 보이나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "1년에서 5년 정도 어려보여요."
		                        }, {
		                            "value": 2,
		                            "text": "나이대로 보여요."
		                        }, {
		                            "value": 3,
		                            "text": "5년정도 더 나이들어 보여요."
		                        }, {
		                            "value": 4,
		                            "text": "5년보다 더 나이들어 보여요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt13",
		                    "visibleIf": "{wt12} notempty",
		                    "title": "최근 5년 동안 야외 스포츠나 다른 활동으로 자신의 피부를 태운 적이 있나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 태우지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "한 달에 한 번 정도 태우고 있어요."
		                        }, {
		                            "value": 3,
		                            "text": "일주일에 한 번 정도 태우고 있어요."
		                        }, {
		                            "value": 4,
		                            "text": "매일 태우고 있어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt14",
		                    "visibleIf": "{wt13} notempty",
		                    "title": "태닝을 얼마나 받나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "전혀 안해요."
		                        }, {
		                            "value": 2,
		                            "text": "1~5년 정도 했어요."
		                        }, {
		                            "value": 3,
		                            "text": "5~10년 정도 했어요."
		                        }, {
		                            "value": 4,
		                            "text": "여러 번 했어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt15",
		                    "visibleIf": "{wt14} notempty",
		                    "title": "흡연을 얼마나 했나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "흡연을 하지 않아요."
		                        }, {
		                            "value": 2,
		                            "text": "두 세 보루"
		                        }, {
		                            "value": 3,
		                            "text": "여러 보루"
		                        }, {
		                            "value": 4,
		                            "text": "매일 하고 있어요."
		                        }, {
		                            "value": 2.5,
		                            "text": "흡연은 하지 않지만 흡연자와 지냈거나 지내고 있어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt16",
		                    "visibleIf": "{wt15} notempty",
		                    "title": "거주지의 공기오염도는 어떤가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "맑고 깨끗해요."
		                        }, {
		                            "value": 2,
		                            "text": "맑고 깨끗할 때도 있고 아닐 때도 있어요."
		                        }, {
		                            "value": 3,
		                            "text": "조금 오염돼있어요."
		                        }, {
		                            "value": 4,
		                            "text": "공기 오염이 심해요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt17",
		                    "visibleIf": "{wt16} notempty",
		                    "title": "레티노이드가 포함된 안면 크림(스티바A, 디페린 등)을 얼마나 사용했나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "몇 년동안 사용했어요."
		                        }, {
		                            "value": 2,
		                            "text": "가끔 사용했어요."
		                        }, {
		                            "value": 3,
		                            "text": "어렸을 때 여드름 때문에 잠깐 사용했어요."
		                        }, {
		                            "value": 4,
		                            "text": "사용한 적 없어요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt18",
		                    "visibleIf": "{wt17} notempty",
		                    "title": "과일이나 채소를 얼마나 자주 먹나요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "매 끼니마다 먹어요."
		                        }, {
		                            "value": 2,
		                            "text": "하루에 한 번은 먹어요."
		                        }, {
		                            "value": 3,
		                            "text": "가끔 먹어요."
		                        }, {
		                            "value": 4,
		                            "text": "전혀 안 먹어요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt19",
		                    "visibleIf": "{wt18} notempty",
		                    "title": "하루 식단 중에 과일과 채소의 비율은 얼마나 되나요? (주스는 제외)",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "75~100% 정도 돼요."
		                        }, {
		                            "value": 2,
		                            "text": "25~75% 정도 돼요."
		                        }, {
		                            "value": 3,
		                            "text": "10~15% 정도 돼요."
		                        }, {
		                            "value": 4,
		                            "text": "0~10% 정도 돼요."
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt20",
		                    "visibleIf": "{wt19} notempty",
		                    "title": "원래 피부색이 어떤가요? (태닝한 피부 X)",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "어두워요. (검은 피부)"
		                        }, {
		                            "value": 2,
		                            "text": "중간정도에요. (갈색, 황토색 피부)"
		                        }, {
		                            "value": 3,
		                            "text": "옅은색이에요. (희고 핑크색 피부)"
		                        }, {
		                            "value": 4,
		                            "text": "매우 옅은색이에요. (새하얀 피부)"
		                        }
		                    ]
		                }, {
		                    "type": "radiogroup",
		                    "name": "wt21",
		                    "visibleIf": "{wt20} notempty",
		                    "title": "무슨 인종인가요?",
		                    "choices": [
		                    	{
		                            "value": 1,
		                            "text": "아프리카계 미국인/카리브해인/흑인 중 하나에요."
		                        }, {
		                            "value": 2,
		                            "text": "아시아인/인도인/지중해인/기타 중 하나에요."
		                        }, {
		                            "value": 3,
		                            "text": "라틴계 미국인/히스패닉인 중 하나에요."
		                        }, {
		                            "value": 4,
		                            "text": "코카시안 인이에요."
		                        }, {
		                            "value": 2.5,
		                            "text": "잘 모르겠어요."
		                        }
		                    ]
		                }
		     		]
			        }
			    ]
			};

	window.survey = new Survey.Model(json);
	
	var od = parseInt(0);
	var pn = parseInt(0);
	var sr = parseInt(0);
	var wt = parseInt(0);
	var result = "";
	
	survey
	    .onComplete
	    .add(function (sender) {
	        document
	            .querySelector('#surveyResult')
	            // .textContent = "Result JSON:\n" + JSON.stringify(sender.data, null, 3);
			var name = "";
			
			for(var i=1; i<=62; i++) {
				if(i < 12) {
					name = "od" + i;
					od += parseInt(survey.data[name]);
				} else if(i < 31) {
					name = "sr" + (i - 11);
					var val = survey.data[name];
					if(i < 14 && val == true) {
						val = (i==12) ? 5 : 2;
					}
					sr += parseInt(val);
				} else if(i < 42) {
					name = "pn" + (i - 30);
					var val = survey.data[name];
					if(i == 31 && val == true) {
						val = 5;
					}
					pn += parseInt(val);
				} else {
					name = "wt" + (i - 41);
					var val = survey.data[name];
					if(i == 42 && val == true) {
						val = 5;
					}
					wt += parseInt(val);
				}
			}
			
			result += (od < 27) ? "D" : "O";
			result += (sr < 30) ? "S" : "R";
			result += (pn < 31) ? "N" : "P";
			result += (wt < 41) ? "T" : "W";
			console.log(result);
			
			location.href = "SurveyServiceCon?result=" + result; 
	    });
	
	survey.showQuestionNumbers = "off";
	
	$("#surveyElement").Survey({model: survey});