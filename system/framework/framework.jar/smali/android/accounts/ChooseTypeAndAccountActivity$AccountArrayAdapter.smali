.class Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ChooseTypeAndAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090033

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;

    invoke-direct {v1, v4}, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;-><init>(Landroid/accounts/ChooseTypeAndAccountActivity$1;)V

    const v2, 0x1020272

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    const v2, 0x1020271

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    const v2, 0x1020273

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;

    iget-object v2, v2, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;

    iget-object v2, v2, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/accounts/ChooseTypeAndAccountActivity$AccountArrayAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;

    invoke-static {v2}, Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;->access$200(Landroid/accounts/ChooseTypeAndAccountActivity$AccountInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;->checkmark:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/ChooseTypeAndAccountActivity$ViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
