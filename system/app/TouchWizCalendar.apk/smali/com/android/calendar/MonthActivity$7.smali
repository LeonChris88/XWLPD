.class Lcom/android/calendar/MonthActivity$7;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-object v2, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v2}, Lcom/android/calendar/MonthActivity;->access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-static {v2}, Lcom/android/calendar/MonthActivity;->access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/MonthActivity$7;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v3}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
