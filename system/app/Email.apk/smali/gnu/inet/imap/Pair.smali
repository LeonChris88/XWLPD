.class public final Lgnu/inet/imap/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/imap/Pair;->key:Ljava/lang/String;

    iput-object p2, p0, Lgnu/inet/imap/Pair;->value:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/Pair;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgnu/inet/imap/Pair;->value:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/inet/imap/Pair;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/imap/Pair;->value:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
