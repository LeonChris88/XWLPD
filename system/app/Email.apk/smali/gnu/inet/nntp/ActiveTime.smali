.class public final Lgnu/inet/nntp/ActiveTime;
.super Ljava/lang/Object;
.source "ActiveTime.java"


# instance fields
.field email:Ljava/lang/String;

.field group:Ljava/lang/String;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/nntp/ActiveTime;->group:Ljava/lang/String;

    iput-object p2, p0, Lgnu/inet/nntp/ActiveTime;->time:Ljava/util/Date;

    iput-object p3, p0, Lgnu/inet/nntp/ActiveTime;->email:Ljava/lang/String;

    return-void
.end method
