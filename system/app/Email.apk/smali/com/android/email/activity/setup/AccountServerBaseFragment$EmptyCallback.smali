.class Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .locals 0

    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0

    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 0

    return-void
.end method
