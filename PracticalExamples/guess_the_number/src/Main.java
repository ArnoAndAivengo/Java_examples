import java.util.Scanner;

public class Main {

    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        // Вывод в консоль
        System.out.println("Вашазадача угадать число.");
        // Цикл с повышением сложности игры. В начале от 0 до 10, 0 до 20 и от 0 до 30.
        for (int i = 10; i <= 30; i += 10) playLevel(i);
        System.out.println("Вы выиграли!!!");
        // Закрытие scanner. Или ввод останеться открытым
        scanner.close();
    }
    // Основной метод игры
    private static void playLevel(int range){
        // алгоритм рандомного числа
        int number = (int) (Math.random() * range);
        // Цикл алгоритма
        while(true){
            System.out.println("Угадайте число от 0 до " + range);
            int input_number = scanner.nextInt();
            if(input_number == number){
                System.out.println("Вы угадали.");
                break;
            } else if(input_number > number){
                System.out.println("Загаданное число меньше");
            }else {
                System.out.println("Загаданное число больше");
            }
        }
    }
}
