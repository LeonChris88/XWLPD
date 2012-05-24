.class Lcom/android/email/Controller$AccountMoveMessageInfo;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountMoveMessageInfo"
.end annotation


# instance fields
.field public delay_cnt:I

.field public messageId:J

.field public source_accountId:J

.field public source_boxId:J

.field public state:J

.field public target_accountId:J

.field public target_boxId:J

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;IJJJJJI)V
    .locals 2

    iput-object p1, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->this$0:Lcom/android/email/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->state:J

    iput-wide p3, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->messageId:J

    iput-wide p5, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_accountId:J

    iput-wide p7, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->target_boxId:J

    iput-wide p9, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_accountId:J

    iput-wide p11, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->source_boxId:J

    iput p13, p0, Lcom/android/email/Controller$AccountMoveMessageInfo;->delay_cnt:I

    return-void
.end method
