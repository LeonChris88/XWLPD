.class Lcom/android/calendar/DayActivity$4;
.super Ljava/lang/Object;
.source "DayActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayActivity$4;->this$0:Lcom/android/calendar/DayActivity;

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

    iget-object v2, p0, Lcom/android/calendar/DayActivity$4;->this$0:Lcom/android/calendar/DayActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/calendar/DayActivity$4;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v3}, Lcom/android/calendar/DayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/android/calendar/DayActivity$4;->this$0:Lcom/android/calendar/DayActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/calendar/DayActivity$4;->this$0:Lcom/android/calendar/DayActivity;

    invoke-virtual {v3}, Lcom/android/calendar/DayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020072

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
