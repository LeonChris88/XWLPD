.class public Lcom/android/email/bubblebutton/BubbleButton;
.super Landroid/widget/Button;
.source "BubbleButton.java"


# instance fields
.field private addr:Ljava/lang/String;

.field private address:Ljava/lang/String;

.field private btn:Landroid/widget/Button;

.field private index:I

.field private mContext:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field private userCheck:I

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButton;->btn:Landroid/widget/Button;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButton;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButton;->addr:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButton;->address:Ljava/lang/String;

    iput v1, p0, Lcom/android/email/bubblebutton/BubbleButton;->userCheck:I

    iput v1, p0, Lcom/android/email/bubblebutton/BubbleButton;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/bubblebutton/BubbleButton;->width:F

    iput-object p1, p0, Lcom/android/email/bubblebutton/BubbleButton;->mContext:Landroid/content/Context;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "BubuleButton Start"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
