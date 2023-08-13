#!/usr/bin/perl

require "./Intern.pl";
use strict;
my %testHash = qw(scooby doo micky mouse donald duck);
use Data::Dumper;

# my $st1 = new Student('Phuc', "Phuc Do Ngoc", "20", "Male", "Ho Chi Minh City", "SE140354");
# my $st2 = new Student('Binh', "Binh Tran Van", "19", "Male", "Long An Province", "SE140355");

# $st1->display();
# Student->nl();
# $st2->display();
# Student::nl();

# print "\nref type $st1 = ".ref($st1)."\n";
# print "\nref type $st2 = ".ref($st2)."\n";
# print "\nref type '\%testHash' = ".ref(\%testHash)."\n";

my $st1 = new Intern('Phuc', "Phuc Do Ngoc", "20", "Male", "Ho Chi Minh City", "SE140354", 'FPT Software');
my $st2 = new Intern('Binh', "Binh Tran Van", "19", "Male", "Long An Province", "SE140355", "Gameloft");

$st1->display();
Intern->nl();
$st2->display();
Intern->nl();

print "\nref type '$st1' = ".ref($st1)."\n==ISA==".$st1->isa('Student')."\t==CAN==".$st1->can('display');
print "\nref type '$st2' = ".ref($st2)."\n==ISA==".$st2->isa('Student')."\t==CAN==".$st2->can('display');
print "\nref type '\%testHash' = ".ref(\%testHash)."\n";

$st1->{name} ="Phuong Chinh";

print "\nName: ".$st1->{name};
print "\nSurname: ". $st1->{surname};
print "\nAge: " .$st1->{age};
print "\nGender: ".$st1->{gender};

print Dumper($st1);
