.class public Lorg/apache/james/mime4j/field/MailboxListField;
.super Lorg/apache/james/mime4j/field/Field;
.source "MailboxListField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/MailboxListField$Parser;
    }
.end annotation


# instance fields
.field private mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;Lorg/apache/james/mime4j/field/address/parser/ParseException;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/apache/james/mime4j/field/MailboxListField;->mailboxList:Lorg/apache/james/mime4j/field/address/MailboxList;

    iput-object p5, p0, Lorg/apache/james/mime4j/field/MailboxListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-void
.end method
