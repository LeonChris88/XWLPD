.class public Lcom/android/calendar/ChooserActivity;
.super Landroid/app/Activity;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ChooserActivity$ResolveListAdapter;,
        Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mEmails:[Ljava/lang/String;

.field private mEventID:J

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/ChooserActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ChooserActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ChooserActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_10

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x0

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v11, v7}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v23, "android.intent.category.DEFAULT"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v7, 0x0

    if-eqz v21, :cond_3

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    const/high16 v24, 0xfff

    and-int v7, v23, v24

    :cond_3
    const/4 v9, 0x0

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    :cond_4
    const/high16 v23, 0x60

    move/from16 v0, v23

    if-ne v7, v0, :cond_8

    const/4 v15, 0x0

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    :cond_5
    if-eqz v15, :cond_6

    :try_start_0
    invoke-virtual {v11, v15}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->access$000(Lcom/android/calendar/ChooserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Landroid/content/ComponentName;

    move-object/from16 v22, v0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->access$000(Lcom/android/calendar/ChooserActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/calendar/ChooserActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    new-instance v23, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v23, v22, v12

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v6, :cond_7

    move-object/from16 v0, v20

    iget v6, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :catch_0
    move-exception v10

    const/4 v11, 0x0

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_6

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz v21, :cond_9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    if-eqz v5, :cond_b

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v23

    if-ltz v23, :cond_a

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v19

    invoke-virtual {v4}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v24

    if-ltz v19, :cond_e

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 v17, 0x0

    if-eqz v21, :cond_c

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_c
    if-eqz v17, :cond_6

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v18

    :cond_d
    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PatternMatcher;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Landroid/os/PatternMatcher;->getType()I

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_e
    const/16 v23, 0x0

    goto :goto_3

    :cond_f
    if-eqz v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v11, v6, v1, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    :cond_10
    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/calendar/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    instance-of v0, v7, Landroid/content/Intent;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    move-object v2, v7

    check-cast v2, Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ChooserActivity;->mEmails:[Ljava/lang/String;

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/ChooserActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/calendar/ChooserActivity$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/ChooserActivity$1;-><init>(Lcom/android/calendar/ChooserActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f0a0086

    invoke-virtual {p0, v1}, Lcom/android/calendar/ChooserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-direct {v1, p0, p0, p2, p4}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    :goto_0
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/AlertController;->installContent()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/ChooserActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040457

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 15

    const/4 v14, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    instance-of v0, v11, Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v10, v11

    check-cast v10, Landroid/content/Intent;

    const-string v0, "_id"

    const-wide/16 v1, -0x1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v14, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, p0, Lcom/android/calendar/ChooserActivity;->mEventID:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v14, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/ChooserActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v6, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-direct {v6, p0, p0, v10, v4}, Lcom/android/calendar/ChooserActivity$ResolveListAdapter;-><init>(Lcom/android/calendar/ChooserActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/calendar/ChooserActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v8

    if-eqz v8, :cond_0

    iput-object v6, p0, Lcom/android/calendar/ChooserActivity;->mAdapter:Lcom/android/calendar/ChooserActivity$ResolveListAdapter;

    invoke-virtual {v8, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
