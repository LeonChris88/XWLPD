.class public Lgnu/inet/imap/Namespaces;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/imap/Namespaces$Namespace;
    }
.end annotation


# instance fields
.field other:Ljava/util/List;

.field personal:Ljava/util/List;

.field shared:Ljava/util/List;


# direct methods
.method private appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "NIL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    if-lez v0, :cond_1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->personal:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->other:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/inet/imap/Namespaces;->shared:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lgnu/inet/imap/Namespaces;->appendNamespaceList(Ljava/lang/StringBuffer;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
