import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(){
  //1. 유저에게 무엇을 낼것인지 물어보는 질의 창
  print('가위, 바위, 보중 하나를 정해서 입력해 주세요.');
  final String userInput = stdin.readLineSync(encoding : utf8) ?? 'Error';
  print('입력 값 : $userInput 입니다.');
  //2. 컴퓨터가 낼 타입이 어떤것인가?
  const selectList = ['가위','바위','보'];
  final cpuInput = selectList[Random().nextInt(3)];
  print('cpu가 선택한 값은 : $cpuInput 입니다.');
  // 3. 유저 타입과 컴퓨터 타입에 대한 결과를 계산할 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}
String getResult(String userInput, String cpuInput){
  String result='';
  const cpuWin = 'cpu가 승리하였습니다.';
  const playWin ='player가 승리 하였습니다';
  const draw ='비겼습니다.';

  switch(userInput){
    case '가위':
      if(cpuInput == '가위') {
        result = draw ;
      }
      if(cpuInput == '바위') {
        result = cpuWin;
      }
      if(cpuInput == '보') {
        result = playWin;
      }
    case '바위':
      if(cpuInput == '가위') {
        result = playWin ;
      }
      if(cpuInput == '바위') {
        result = draw;
      }
      if(cpuInput == '보') {
        result = cpuWin;
      }
    case '보 ':
      if(cpuInput == '가위') {
        result = cpuWin ;
      }
      if(cpuInput == '바위') {
        result = playWin;
      }
      if(cpuInput == '보') {
        result = draw;
      }
    default:
      result = '올바른 값을 입력 해주세요';
  }
  return result;

}