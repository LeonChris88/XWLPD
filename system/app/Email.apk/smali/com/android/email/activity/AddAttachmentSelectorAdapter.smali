.class public Lcom/android/email/activity/AddAttachmentSelectorAdapter;
.super Lcom/android/email/activity/IconListAdapter;
.source "AddAttachmentSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->getData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    new-instance v0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;II)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static getData(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0801f7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020010

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020013

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02000b

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801ff

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020016

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f080200

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02000c

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f080201

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020009

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f080202

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020014

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f08029f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02000a

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020011

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801fa

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02000f

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    const v1, 0x7f0801f5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020015

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/AddAttachmentSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method
