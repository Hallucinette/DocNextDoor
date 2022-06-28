//
//  Settings.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 22/06/2022.
//
import SwiftUI

struct Settings: View {
    @Binding var profilUser : ProfilUser
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack {//full view
                VStack {//Vstack header
                    Text("Paramètres").bold().font(.title2).padding(2)
                    Rectangle().frame(width: 600, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(5)
                }//fin Vstack Header
                    Form {
                        Section (header: Text("Paramètres du compte")) {
                            Text("Changer votre mot de passe")
                            Text("Changer votre mail")
                        }//fin section Compte
                        Section (header: Text("Autorisation de contact")) {
                            Toggle( isOn: $profilUser.allowNotif, label: { Text("Notifications")}).tint(Color("Darkblue"))
                            Toggle( isOn: $profilUser.allowContact, label: { Text("J'accepte d'être contacté.e")}).tint(Color("Darkblue"))
                        }//fin section Contact
                        Section (header: Text("Docmuments tramsmis")) {
                            Text("Changer votre Curriculum Vitæ")
                        }//fin sction CV
                    }.frame(width: 410, height: 410)//fin form
                    Text("CHANGER VOTRE IMAGE DE PROFIL").font(.footnote).foregroundColor(Color("Txtgrey")).frame(
                        maxWidth: .infinity,
                        alignment: .leading).frame(width: 325)
                    VStack {
                    HStack {
                            Button () {
                                profilUser.pp = "Female1"
                            } label: {
                                if profilUser.pp == "Female1" {
                                    Image("Female1").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                        .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                                }//fin if
                                else {
                                    Image("Female1").resizable().clipShape(Circle())
                                        .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                                }//fin else
                        }//fin button
                        Button () {
                            profilUser.pp = "Female2"
                        } label: {
                            if profilUser.pp == "Female2" {
                                Image("Female2").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Female2").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Female3"
                        } label: {
                            if profilUser.pp == "Female3" {
                                Image("Female3").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Female3").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Female4"
                        } label: {
                            if profilUser.pp == "Female4" {
                                Image("Female4").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Female4").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Female5"
                        } label: {
                            if profilUser.pp == "Female5" {
                                Image("Female5").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Female5").resizable().clipShape(Circle())
                                    .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                            }//fin else
                        }//fin button
                    }.frame(width: 365, height: 80).background(Color(.white)).cornerRadius(15)//fin hastack female pp
                    HStack {
                            Button () {
                                profilUser.pp = "Male1"
                            } label: {
                                if profilUser.pp == "Male1" {
                                    Image("Male1").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                        .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                                }//fin if
                                else {
                                    Image("Male1").resizable().clipShape(Circle())
                                        .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                                }//fin else
                        }//fin button
                        Button () {
                            profilUser.pp = "Male2"
                        } label: {
                            if profilUser.pp == "Male2" {
                                Image("Male2").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Male2").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Male3"
                        } label: {
                            if profilUser.pp == "Male3" {
                                Image("Male3").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Male3").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Male4"
                        } label: {
                            if profilUser.pp == "Male4" {
                                Image("Male4").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Male4").resizable().clipShape(Circle())
                                    .frame(width: 60, height: 60)
                            }//fin else
                    }//fin button
                        Button () {
                            profilUser.pp = "Male5"
                        } label: {
                            if profilUser.pp == "Male5" {
                                Image("Male5").resizable().overlay(Circle().stroke( Color("Darkblue"), lineWidth: 5)).clipShape(Circle())
                                    .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                            }//fin if
                            else {
                                Image("Male5").resizable().clipShape(Circle())
                                    .foregroundColor(Color("Lightblue")).frame(width: 60, height: 60)
                            }//fin else
                        }//fin button
                    }//fin Hstack male
                }.frame(width: 365, height: 180).background(Color(.white)).cornerRadius(15)//fin Vstack PP
                Spacer()
            }//fin VSTAck full view
        }//fin Background ZStack
    }//fin body
}//fin view settings
/*struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        //Settings(profilUser:  ).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
*/