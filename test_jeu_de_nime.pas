{ALGORITHME : JEU de NIME
BUT : 	Le jeu se joue à deux.
		Les deux joueurs se partagent un tas de 21 allumettes.
		À tour de rôle, ils doivent retirer 1, 2 ou 3 allumettes du tas ;
		le joueur qui retire la dernière allumette a perdu
ENTREE : le nb d'allumette que le joueur prend.
SORTIE : nb d'alumettes restante,le gagnant.

procedure Tour_joueur_contre joueur(nb_alumette:ENTIER)

	VAR
		alumette_retire : ENTIER
		Tour_joueur : ENTIER

	DEBUT
		alumette_retire<-21
		Tour_joueur<-0
		REPETER
		ECRIRE"C'est au tour du joueur 1"
		ECRIRE"Veuillez retirer 1,2 ou 3 alumettes"
		LIRE alumette_retire
		SI (alumette_retire>3) ou (alumette_retire<1) ALORS
			REPETER
				ECRIRE "Veuillez ressaisir le nombre d'allumette a retirer"
				LIRE alumette_retire
			JUSQU'A (alumette_retire>0) ET (alumette_retire<4)
		FINSI
		nb_alumette<- nb_alumette-alumette_retire
		ECRIRE"Il reste "&nb_alumette&" alumettes"
		SI (nb_alumette=0) ALORS
			ECRIRE "le joueur 1 a perdu"
		FINSI
		Tour_joueur<-Tour_joueur+1


		ECRIRE"C'est au tour du joueur 2"
		ECRIRE"Veuillez retirer 1,2 ou 3 alumettes"
		LIRE alumette_retire
		SI (alumette_retire>3) ou (alumette_retire<1) ALORS
			REPETER
				ECRIRE "Veuillez ressaisir le nombre d'allumette a retirer"
				LIRE alumette_retire
			JUSQU'A (alumette_retire>0) ET (alumette_retire<4)
		FINSI
		nb_alumette<- nb_alumette-alumette_retire
		ECRIRE"Il reste "&nb_alumette&" alumettes"
		SI (nb_alumette=0) ALORS
			ECRIRE "le joueur 2 a perdu"
		FINSI
		Tour_joueur<-Tour_joueur-1
		JUSQU'A nb_alumette<=0
	FIN




VAR
	nb_alumette: ENTIER

DEBUT
	ECRIRE "Debut du jeu"
	Tour_joueur_contre_joueur(nb_alumette)
FIN



JEU D'ESSAI

"C'est au tour du joueur 1"
"Veuillez retirer 1,2 ou 3 alumettes"
2
"Il reste 19 alumettes"

"C'est au tour du joueur 2"
"Veuillez retirer 1,2 ou 3 alumettes"
2
"Il reste 17 alumettes"

"C'est au tour du joueur 1"
"Veuillez retirer 1,2 ou 3 alumettes"
3
"Il reste 14 alumettes"
}

PROGRAM jeu_d_alumettes;

USES crt,math;

procedure Tour_joueur_contre_joueur(nb_alumette:INTEGER);

	VAR
		alumette_retire : INTEGER;
		tour_joueur : INTEGER;

	BEGIN
	clrscr;
		nb_alumette:=21;		//fixe le nombre de départ d'allumette a 21
		tour_joueur:=0; 		//tour du joueur 1(=0)
		REPEAT
		writeln('C''est au tour du joueur 1');
		writeln('Veuillez retirer 1,2 OU 3 alumettes');
		readln(alumette_retire);
		IF(alumette_retire>3) OR(alumette_retire<1) THEN		//le joueur retire entre 1,2 ou 3 allumette
		BEGIN
			REPEAT
				writeln('Veuillez ressaisir le nombre d''allumette a retirer');
				readln(alumette_retire);
			UNTIL (alumette_retire>0) AND(alumette_retire<4);
		END;
		nb_alumette:= nb_alumette-alumette_retire;		//enleve n allumette aux stock d'allumette original
		writeln('Il reste ',nb_alumette,' alumettes');
		IF(nb_alumette<=0) and (tour_joueur=0) THEN		//condition de fin de jeu
		BEGIN
			writeln('le joueur 1 a perdu');
		END;
		tour_joueur:=tour_joueur+1;					//passe au 2eme joueur
		readln;



		writeln('C''est au tour du joueur 2');
		writeln('Veuillez retirer 1,2 OU 3 alumettes');
		readln(alumette_retire);
		IF (alumette_retire>3) OR (alumette_retire<1) THEN
		BEGIN
			REPEAT
				writeln('Veuillez ressaisir le nombre d''allumette a retirer');
				readln (alumette_retire);
			UNTIL (alumette_retire>0) AND(alumette_retire<4);
		END;
		nb_alumette:=nb_alumette-alumette_retire;
		writeln('Il reste ',nb_alumette,' alumettes');
		IF(nb_alumette<=0) THEN
		BEGIN
			writeln('le joueur 2 a perdu');
		END;
		tour_joueur:=tour_joueur-1;
		readln;
		UNTIL (nb_alumette<=0);
	END;


VAR
	nb_alumette: INTEGER;

BEGIN
	writeln('DEBUT du jeu');
	Tour_joueur_contre_joueur(nb_alumette);
END.