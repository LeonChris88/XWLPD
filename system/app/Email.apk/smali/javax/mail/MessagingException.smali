.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# instance fields
.field private nextException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";\n  nested exception is: \n\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNextException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    return-object v0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const-string v0, "nested exception is:"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const-string v0, "nested exception is:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/mail/MessagingException;->nextException:Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method
