.class public Lgnu/inet/http/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/http/Credentials;->username:Ljava/lang/String;

    iput-object p2, p0, Lgnu/inet/http/Credentials;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Credentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/http/Credentials;->username:Ljava/lang/String;

    return-object v0
.end method
