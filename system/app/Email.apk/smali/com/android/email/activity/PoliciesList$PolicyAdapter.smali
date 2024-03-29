.class Lcom/android/email/activity/PoliciesList$PolicyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/PoliciesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/PoliciesList$PolicyItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceID:I

.field final synthetic this$0:Lcom/android/email/activity/PoliciesList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->this$0:Lcom/android/email/activity/PoliciesList;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mResourceID:I

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/email/activity/PoliciesList$PolicyItem;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/PoliciesList$PolicyItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->getItem(I)Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mResourceID:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;-><init>(Lcom/android/email/activity/PoliciesList$PolicyAdapter;Lcom/android/email/activity/PoliciesList$1;)V

    const v2, 0x7f10023c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v2, 0x7f10023d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/PoliciesList$PolicyItem;

    invoke-virtual {v2}, Lcom/android/email/activity/PoliciesList$PolicyItem;->getPolicyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/email/activity/PoliciesList$PolicyAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/PoliciesList$PolicyItem;

    invoke-virtual {v2}, Lcom/android/email/activity/PoliciesList$PolicyItem;->getPolicyValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->value:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/email/activity/PoliciesList$PolicyAdapter$ViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
