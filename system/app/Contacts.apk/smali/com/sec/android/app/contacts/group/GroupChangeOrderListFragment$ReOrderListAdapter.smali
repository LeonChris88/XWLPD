.class Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupChangeOrderListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwDndController;"
    }
.end annotation


# instance fields
.field private mLayoutId:I

.field final synthetic this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->this$0:Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->setNotifyOnChange(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    if-ge p1, p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->mLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    invoke-direct {v0, p2}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
