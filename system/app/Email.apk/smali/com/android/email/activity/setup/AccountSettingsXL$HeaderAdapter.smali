.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;,
        Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 1

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const v6, 0x7f100004

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    const/4 v3, 0x0

    new-instance v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;

    invoke-direct {v2, p0, v9}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    packed-switch v1, :pswitch_data_1

    :goto_1
    return-object v3

    :pswitch_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1010208

    invoke-direct {v3, v4, v9, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008d

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008c

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const v4, 0x7f10023e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v6, 0x7f0805dc

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const v6, 0x7f0805ba

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSettingsXL;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v4

    iget-wide v5, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;

    invoke-direct {v5, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;

    invoke-direct {v4, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_1
    iget-object v4, v2, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
