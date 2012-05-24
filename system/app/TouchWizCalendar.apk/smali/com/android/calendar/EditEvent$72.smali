.class Lcom/android/calendar/EditEvent$72;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->addReminder(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$72;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendar/EditEvent$72;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$72;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$2400(Lcom/android/calendar/EditEvent;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/calendar/EditEvent;->access$2302(Lcom/android/calendar/EditEvent;I)I

    iget-object v1, p0, Lcom/android/calendar/EditEvent$72;->this$0:Lcom/android/calendar/EditEvent;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/calendar/EditEvent;->access$8402(Lcom/android/calendar/EditEvent;I)I

    iget-object v0, p0, Lcom/android/calendar/EditEvent$72;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->showDialog(I)V

    return-void
.end method
