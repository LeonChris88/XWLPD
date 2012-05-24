.class public Lcom/android/email/activity/MailboxListNullItem;
.super Landroid/view/View;
.source "MailboxListNullItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MailboxListNullItem;->setMeasuredDimension(II)V

    return-void
.end method
