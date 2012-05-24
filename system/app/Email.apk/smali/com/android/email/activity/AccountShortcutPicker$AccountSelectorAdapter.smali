.class Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/AccountShortcutPicker$DialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/AccountShortcutPicker$DialogItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    move-object v4, p2

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/email/activity/AccountShortcutPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;

    if-eqz v0, :cond_1

    const v5, 0x7f1000ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f1000b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v4
.end method
