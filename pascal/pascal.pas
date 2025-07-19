Program Dossier3;

Type
    TabStr = array[1..100] of string;
    TabInt = array[1..100] of integer;

Var
    NOMGRO, TYPPIR, DATLIV : TabStr;
    PRIPIR : TabInt;
    N, I, MAX, XNOMBRE, XCOUTOT, MOIS, ANNEE : integer;
    XGROUPE : string;

Function MoisLivraison(dateStr: string): integer;
begin
    MoisLivraison := StrToInt(Copy(dateStr, 6, 2));
end;

Function AnneeLivraison(dateStr: string): integer;
begin
    AnneeLivraison := StrToInt(Copy(dateStr, 1, 4));
end;

Begin
    { Chargement des données fictives }
    N := 4;
    NOMGRO[1] := 'G1'; TYPPIR[1] := 'PROPULSION MOTEUR'; PRIPIR[1] := 800000; DATLIV[1] := '2023-03-15';
    NOMGRO[2] := 'G2'; TYPPIR[2] := 'PROPULSION PAGAI';  PRIPIR[2] := 500000; DATLIV[2] := '2023-08-22';
    NOMGRO[3] := 'G3'; TYPPIR[3] := 'PROPULSION MOTEUR'; PRIPIR[3] := 1200000; DATLIV[3] := '2023-05-20';
    NOMGRO[4] := 'TARTAMPION'; { Sentinelle }

    { 1. Trouver la pirogue moteur la plus chère au 1er semestre 2023 }
    MAX := 0;
    XGROUPE := '';
    I := 1;

    While (NOMGRO[I] <> 'TARTAMPION') do
    begin
        MOIS := MoisLivraison(DATLIV[I]);
        ANNEE := AnneeLivraison(DATLIV[I]);

        if (TYPPIR[I] = 'PROPULSION MOTEUR') and (ANNEE = 2023) and (MOIS >= 1) and (MOIS <= 6) then
        begin
            if PRIPIR[I] > MAX then
            begin
                MAX := PRIPIR[I];
                XGROUPE := NOMGRO[I];
            end;
        end;
        I := I + 1;
    end;

    Writeln('Groupement avec la pirogue moteur la plus chere au 1er semestre 2023 : ', XGROUPE);

    { 2. Nombre et coût total des pirogues à pagaie au 2e semestre 2023 }
    XNOMBRE := 0;
    XCOUTOT := 0;
    I := 1;

    While (NOMGRO[I] <> 'TARTAMPION') do
    begin
        MOIS := MoisLivraison(DATLIV[I]);
        ANNEE := AnneeLivraison(DATLIV[I]);

        if (TYPPIR[I] = 'PROPULSION PAGAI') and (ANNEE = 2023) and (MOIS >= 7) and (MOIS <= 12) then
        begin
            XNOMBRE := XNOMBRE + 1;
            XCOUTOT := XCOUTOT + PRIPIR[I];
        end;
        I := I + 1;
    end;

    Writeln('Nombre de pirogues à pagaie livrées au 2e semestre 2023 : ', XNOMBRE);
    Writeln('Cout total : ', XCOUTOT);

End.
