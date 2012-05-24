.class public final Lgnu/inet/nntp/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field canPost:Z

.field first:I

.field last:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/inet/nntp/Group;->name:Ljava/lang/String;

    iput p2, p0, Lgnu/inet/nntp/Group;->last:I

    iput p3, p0, Lgnu/inet/nntp/Group;->first:I

    iput-boolean p4, p0, Lgnu/inet/nntp/Group;->canPost:Z

    return-void
.end method
