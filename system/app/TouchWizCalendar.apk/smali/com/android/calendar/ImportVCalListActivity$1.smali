.class Lcom/android/calendar/ImportVCalListActivity$1;
.super Ljava/lang/Object;
.source "ImportVCalListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportVCalListActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportVCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportVCalListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v4}, Lcom/android/calendar/ImportVCalListActivity;->access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v3}, Lcom/android/calendar/ImportVCalListActivity;->access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    iget-object v3, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v3}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calendar/ImportVCalListActivity;->access$302(Lcom/android/calendar/ImportVCalListActivity;I)I

    :goto_1
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$100(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$500(Lcom/android/calendar/ImportVCalListActivity;)I

    move-result v1

    :goto_2
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$400(Lcom/android/calendar/ImportVCalListActivity;)Lcom/android/calendar/ImportVCalListActivity$EventAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/ImportVCalListActivity$EventAdapter;->getCount()I

    move-result v2

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$600(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2}, Lcom/android/calendar/ImportVCalListActivity;->access$200(Lcom/android/calendar/ImportVCalListActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/calendar/ImportVCalListActivity$1;->this$0:Lcom/android/calendar/ImportVCalListActivity;

    invoke-static {v2, v3}, Lcom/android/calendar/ImportVCalListActivity;->access$302(Lcom/android/calendar/ImportVCalListActivity;I)I

    goto :goto_1

    :cond_2
    return-void
.end method
