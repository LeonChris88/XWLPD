.class public Lgnu/inet/util/GetSystemPropertyAction;
.super Ljava/lang/Object;
.source "GetSystemPropertyAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/util/GetSystemPropertyAction;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgnu/inet/util/GetSystemPropertyAction;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
