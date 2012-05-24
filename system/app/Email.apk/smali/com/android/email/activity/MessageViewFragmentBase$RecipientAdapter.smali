.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecipientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private rpItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->rpItem:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->rpItem:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0802d9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040061

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    :goto_0
    return-object v3

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040094

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;-><init>()V

    const v4, 0x7f10024c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    const v4, 0x7f10024e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailName:Landroid/widget/TextView;

    const v4, 0x7f100250

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    const v4, 0x7f10024f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailAddress:Landroid/widget/TextView;

    const v4, 0x7f10024d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    if-eqz v2, :cond_3

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v4, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    move-object v3, p2

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;

    goto :goto_1

    :cond_5
    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->oneAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->TwoTextView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getPersonal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$ViewHolder;->mailCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method
