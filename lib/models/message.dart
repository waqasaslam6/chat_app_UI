import 'package:mixchat_app/models/user.dart';
class Message{

  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message(
  {
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  }
      );

}

  // Curruent User

  final User currentUser = User(
    id: 0,
    name : 'Current User',
    imageUrl: 'assets/images/1.jpg',
  );

  // Waqas User
  final User waqasUser = User(
   id: 1,
   name : 'Waqas Khan',
   imageUrl: 'assets/images/4.jpg',
  );

 // Girl 1 User

  final User lucretiaUser = User(
   id: 2,
   name : 'Lucretia',
   imageUrl: 'assets/images/2.jpg',
   );

  // Girl 2 User

   final User miraUser = User(
     id: 3,
     name: 'Mira',
     imageUrl: 'assets/images/3.jpg',
   );
   // User 4
   final User evaUser = User(
     id: 5,
     name: 'Eva',
     imageUrl: 'assets/images/5.jpg',
   );
  // User 5
   final User kristonUser = User(
     id: 6,
     name: 'Kriston',
     imageUrl: 'assets/images/6.jpg',
   );


   // favourite Contacts

   List<User> favourites = [waqasUser,miraUser,evaUser,kristonUser,lucretiaUser];


   // Example of chats on Home Screen

    List<Message> chats =[
    Message(
        sender: waqasUser,
          text: 'Hello, How are you?',
          isLiked: true,
          time: '4:00 PM',
          unread: true
         ),
      Message(
          sender: kristonUser,
          text: 'Whats up!',
          isLiked: false,
          time: '8:00 PM',
          unread: false
      ),
      Message(
          sender: evaUser,
          text: 'I design flutter UI',
          isLiked: false,
          time: '6:00 PM',
          unread: true
      ),

      Message(
          sender: miraUser,
          text: 'A Fine UI for Chat app!',
          isLiked: false,
          time: '7:00 PM',
          unread: false
      ),
      Message(
          sender: kristonUser,
          text: 'Nice interface for such an app',
          isLiked: false,
          time: '4:00 PM',
          unread: false
      ),
    ];











