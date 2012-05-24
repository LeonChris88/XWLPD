.class public final Lcom/sec/android/app/twlauncher/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;,
        Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;,
        Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;,
        Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;,
        Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$TextDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;,
        Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$NameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field static DEFAULT_SCREEN:I

.field static DEFAULT_SCREEN_COUNT:I

.field static DEFAULT_SCREEN_NO:I

.field static NUMBER_CELLS_X:I

.field static NUMBER_CELLS_Y:I

.field static SCREEN_COUNT:I

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z

.field static USE_MAINMENU_LISTMODE:Z

.field protected static mCameraFirmVer:Ljava/lang/String;

.field protected static mCscVer:Ljava/lang/String;

.field protected static mHwVer:Ljava/lang/String;

.field protected static mIsDefaultIMSI:Z

.field protected static mIsSmdPbaTested:Ljava/lang/String;

.field private static mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected static mPdaVer:Ljava/lang/String;

.field protected static mPhoneVer:Ljava/lang/String;

.field protected static mRfCalDate:Ljava/lang/String;

.field protected static mTskFirmVer:Ljava/lang/String;

.field protected static mTspFirmVer:Ljava/lang/String;

.field protected static mUART:Ljava/lang/String;

.field protected static mUNnumber:Ljava/lang/String;

.field protected static mUSB:Ljava/lang/String;

.field static mUninstallPackageName:Ljava/lang/String;

.field private static sIsChangedBadge:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field private static sScreen:I


# instance fields
.field private final ACTION_APP_MORECONTENTS:Ljava/lang/String;

.field private final APP_CALLER_HOME:I

.field private final EXT_KEY_APP_CALLER:Ljava/lang/String;

.field private final UNINSTALL_COMPLETE:I

.field private config:Lcom/sec/android/app/twlauncher/appConfig;

.field private isDone:Z

.field public m32BitWindow:Z

.field private mActiveMenuId:I

.field private mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/twlauncher/TextIconAdapter",
            "<",
            "Lcom/sec/android/app/twlauncher/SimpleTextIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

.field private mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

.field private mAddWidgetType:I

.field private mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field protected mAppUnistallList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

.field private mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

.field private mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

.field private mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

.field mBlankScreen:[I

.field private final mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mBootInProgress:Z

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDeleteIndex:I

.field private mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

.field private mDesktopLocked:Z

.field private mDestroyed:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private final mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

.field private mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field private mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mForce32BitWindow:Z

.field private mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActive:Z

.field private mIsDeletePopup:Z

.field private mIsMoveDefaultScreen:Z

.field private mIsNewIntent:Z

.field private mIsOpaqueWindow:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

.field private mLocaleChanged:Z

.field private mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mMenuScreenCount:I

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOptionsMenuState:I

.field public mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field public mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field public mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mPrefs:Landroid/content/SharedPreferences;

.field mProductModelFamilyName:Ljava/lang/String;

.field mProductModelName:Ljava/lang/String;

.field private mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

.field private mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mResolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoring:Z

.field private mRunBadgeChanged:Ljava/lang/Runnable;

.field private mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

.field private mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mSpans:[I

.field private mStateQuickNavigation:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToast:Landroid/widget/Toast;

.field private mWaitingForResult:Z

.field private mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field public mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

.field private mWidget:Lcom/sec/android/app/twlauncher/Widget;

.field private mWidgetId:I

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private minsertAtFirst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x7

    const/4 v0, 0x4

    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_NO:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;

    const-string v0, "N"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v5}, Landroid/app/ActivityGroup;-><init>(Z)V

    invoke-static {}, Lcom/sec/android/app/twlauncher/appConfig;->getInstance()Lcom/sec/android/app/twlauncher/appConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ExternalAppsAvailabilityReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$BootCompleteIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$FavoritesChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$PowerSavingObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const-string v0, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->ACTION_APP_MORECONTENTS:Ljava/lang/String;

    const-string v0, "KEY_APP_CALLER"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->EXT_KEY_APP_CALLER:Ljava/lang/String;

    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->APP_CALLER_HOME:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    const-string v0, "GT-I9000"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$11;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$12;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    iput v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$13;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Launcher created: %x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/Launcher;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$3400()Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMSI()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->resetAndRestartLoaders()V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->removePackageFromWorkspace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelAdd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->updateShortcutsForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->triggerModelUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onFavoritesChanged()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkSamsungAppWidgetExternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->bindSamsungAppWidgetExternal()V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method private activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->activate()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    goto :goto_0
.end method

.method private addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 10

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getNewFolderName(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    :cond_2
    const-wide/16 v2, -0x64

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    const v2, 0x7f03000a

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v4, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v7, v9

    move v8, v9

    move v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1
.end method

.method private addItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 12

    const/4 v4, 0x0

    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    :goto_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setFiltered(Z)V

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    return-object v2

    :catch_0
    move-exception v2

    move-object v2, v4

    :goto_2
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load live folder icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_0
    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    goto :goto_0
.end method

.method static addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 8

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    const-wide/16 v2, -0x64

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    return-object v1
.end method

.method private bindAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v3

    iput-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const-string v3, "Launcher"

    const-string v4, "about to setAppWidget for id=%d, info=%s"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v8

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v4, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4, v5, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    iget-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v9, :cond_2

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v11}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method private bindApplications(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    return-void
.end method

.method private bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  ------> a source is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    :cond_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingItems()V

    goto :goto_0
.end method

.method private bindItems(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    add-int/lit8 v1, p3, 0x6

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_0
    if-ge p3, v10, :cond_4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/android/app/twlauncher/ItemInfo;

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added a item in workspace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    sparse-switch v1, :sswitch_data_0

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :sswitch_0
    move-object v1, v8

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_0

    const/4 v7, 0x1

    :goto_2
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :sswitch_1
    const v3, 0x7f03000a

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-static {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_1

    const/4 v7, 0x1

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :sswitch_2
    const v3, 0x7f03000f

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, v8

    check-cast v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-static {v3, p0, v1, v2}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    if-nez v9, :cond_2

    const/4 v7, 0x1

    :goto_4
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_4

    :sswitch_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f060052

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    check-cast v8, Lcom/sec/android/app/twlauncher/Widget;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    if-nez v9, :cond_3

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v0, v2, v8, v1}, Lcom/sec/android/app/twlauncher/Workspace;->addWidget(Landroid/view/View;Lcom/sec/android/app/twlauncher/Widget;Z)V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    if-ge v10, p4, :cond_6

    invoke-virtual {p1, v10}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->continueBindingItems(I)V

    :cond_5
    :goto_6
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->finishBindDesktopItems()V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingApplications()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingAppWidgets()V

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x3e9 -> :sswitch_3
    .end sparse-switch
.end method

.method private bindSamsungAppWidgetExternal()V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "widgetInstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "widgetInstall"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "className"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const-string v4, "packageName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "className"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v4, :cond_2

    const-string v4, "Launcher"

    const-string v5, "Failed to get Add Item Cell Info from findAllVacantCellsFromModel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    const-string v5, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v3, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v5

    iput v5, v4, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.widgetapp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    const-string v2, "Failed to bind AppWidget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private bindSamsungAppWidgets(Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, -0x2

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v11, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v11, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, v1, v8}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v1, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v10, :cond_4

    :goto_0
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    :goto_1
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added a item in workspace (type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    :cond_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteIndex(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    iput-object v1, v8, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    iget v2, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v4, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v5, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    if-nez v10, :cond_6

    :goto_3
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto/16 :goto_1

    :cond_6
    move v7, v9

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_2
.end method

.method private checkForLocaleChange()V
    .locals 10

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_3

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_1

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    :cond_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    sget-object v9, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPkgModFlag()Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private checkSamsungAppWidgetExternal()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "widgetInstall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "packageName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "className"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method private closeDrawer(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menudiscard()V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateOpen()V

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    :cond_0
    return-void
.end method

.method private completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v8

    iget-object v2, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    move-object/from16 v0, p2

    iget v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    move-object/from16 v0, p2

    iput v2, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    iget v3, v13, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v4, v13, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    const/4 v2, 0x0

    aget v5, v10, v2

    const/4 v2, 0x1

    aget v6, v10, v2

    if-nez v9, :cond_6

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v5, 0x0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aget v6, v10, v6

    aput v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v3, 0x1

    const/4 v6, 0x1

    aget v6, v10, v6

    aput v6, v2, v3

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    if-eqz v9, :cond_13

    array-length v2, v9

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    const/4 v3, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget v7, v10, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "x"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    aget v7, v10, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :goto_1
    array-length v11, v9

    if-ge v2, v11, :cond_12

    aget-object v11, v9, v2

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v11

    move v3, v6

    :goto_3
    if-ge v6, v11, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v12

    move v7, v2

    :goto_4
    if-ltz v7, :cond_1

    aget-object v14, v9, v7

    const/4 v15, 0x0

    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v15, v14}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v15, v10, v7

    aput v15, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x1

    const/4 v7, 0x1

    aput v14, v10, v7

    aput v14, v3, v5

    const/4 v5, 0x1

    move v3, v6

    :cond_1
    if-eqz v5, :cond_9

    :cond_2
    if-eqz v3, :cond_11

    add-int/lit8 v6, v3, -0x1

    :goto_5
    if-ltz v6, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v11

    move v7, v2

    :goto_6
    if-ltz v7, :cond_3

    aget-object v12, v9, v7

    const/4 v14, 0x0

    const/16 v15, 0x78

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x78

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v15

    invoke-virtual {v15, v4, v14, v12}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v14, v10, v7

    aput v14, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v5, 0x1

    const/4 v7, 0x1

    aput v12, v10, v7

    aput v12, v3, v5

    const/4 v5, 0x1

    move v3, v6

    :cond_3
    if-eqz v5, :cond_b

    move v2, v3

    :goto_7
    if-eqz v5, :cond_4

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v6, 0x1

    aget v6, v10, v6

    iget-object v7, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v6, v7, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    :cond_4
    move v3, v2

    move v2, v5

    :goto_8
    if-nez v2, :cond_c

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    :goto_9
    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :cond_5
    :goto_a
    return-void

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    if-eq v3, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    goto :goto_9

    :cond_e
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_a

    :cond_f
    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v2, v13, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-direct {v6, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v10, v2

    iput v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    aget v2, v10, v2

    iput v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    const/4 v2, 0x0

    aget v10, v4, v2

    const/4 v2, 0x1

    aget v11, v4, v2

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v2, :cond_10

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0, v13}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    iput-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v2, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v9, v4, v5

    const/4 v5, 0x1

    aget v5, v4, v5

    iget v10, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v7, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    move v4, v9

    move v6, v10

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_a

    :cond_10
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto/16 :goto_a

    :cond_11
    move v2, v3

    goto/16 :goto_7

    :cond_12
    move v2, v3

    goto/16 :goto_2

    :cond_13
    move v3, v6

    move v2, v5

    goto/16 :goto_8

    :cond_14
    move v2, v5

    goto/16 :goto_9
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeAddAppWidget(): dumping extras content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/Launcher;->minsertAtFirst:Z

    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(ILcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    return-void
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    const v2, 0x7f03000f

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v4, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v6, v5

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    :cond_2
    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p2, p3}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    goto :goto_0
.end method

.method private completePreviewAppWidget()V
    .locals 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v8

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v4, v9, v7

    aget v5, v9, v8

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v10, :cond_1

    :goto_1
    move v7, v0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1
.end method

.method private createBlankPage()I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v4

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v1, v3, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03001c

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v0, v1

    goto :goto_0
.end method

.method public static createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1

    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    return-object v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    return v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v4, "launcher.add_occupied_cells"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p5, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private finishBindDesktopItems()V
    .locals 11

    const/4 v10, -0x1

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v9, "launcher.user_folder"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    if-eqz v7, :cond_3

    move-object v0, v7

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-wide v1, v0, v3

    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v8}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    iput v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v4, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_5
    throw v0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static getModel()Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static getScreen()I
    .locals 2

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBackKey(Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->closeFolderOnCurrentPage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->handleBackKey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3

    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method private static infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/high16 v4, 0x1020

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    :goto_1
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v4, "Launcher"

    const-string v5, "Couldn\'t find ActivityInfo for selected application"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_1
.end method

.method private static infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 12

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    new-instance v5, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-static {v2, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v5

    move v5, v3

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    new-instance v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    iput-object v2, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    iput-object v4, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v7

    :cond_1
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_2

    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move v3, v5

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v4

    :goto_1
    const-string v7, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not load shortcut icon: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    move-object v11, v2

    move-object v2, v4

    move-object v4, v11

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1

    :cond_2
    move v3, v5

    move-object v2, v4

    goto :goto_0
.end method

.method private isMenuEditDialogAvailable()Z
    .locals 3

    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MenuEditDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionDialogAvailable()Z
    .locals 3

    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private launchAppWidgetPicker()V
    .locals 14

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-array v1, v4, [Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ResolveInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    array-length v3, v0

    move v2, v4

    :goto_2
    if-ge v2, v3, :cond_8

    aget-object v6, v0, v2

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    move v3, v2

    :goto_3
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v5

    move v2, v4

    :goto_4
    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    if-eqz v2, :cond_1

    new-instance v2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v2}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    iput-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    new-instance v3, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "custom_widget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "customInfo"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v1, "customExtras"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    move v6, v4

    move v2, v5

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_5

    :cond_8
    move v3, v4

    goto/16 :goto_3
.end method

.method private onAppWidgetReset()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBadgeChanged()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    sput-boolean v8, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_0
.end method

.method private onFavoritesChanged()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1, p0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    return-void
.end method

.method private onShareAppRequested()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.shareapp"

    const-string v2, "com.sec.android.app.shareapp.ShareApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getColumns()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getRows()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    goto :goto_0
.end method

.method private prepareWidgetPreview(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSearch()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAutoScrollScreen(I)V

    :goto_2
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v3

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v3

    goto :goto_1
.end method

.method private previewAppWidget()V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(ILjava/lang/String;)V

    aget v4, v1, v8

    iput v4, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v1, v4, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidgetWithoutPadding(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v0, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0009

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v5, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v7

    iget v7, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v7

    invoke-direct {v6, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    goto :goto_0
.end method

.method private processAddToWallpapersMenuSelection(IJ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    :cond_0
    return-void
.end method

.method private processAddToWorkspaceMenuSelection(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    long-to-int v0, p2

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_0

    :pswitch_2
    const-string v0, "android.permission.BIND_APPWIDGET"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080017
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private processAppShortcutMenuSelection(IJ)V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    long-to-int v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, p0, v1, v3, v2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private processFolderMenuSelection(IJ)V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder(Ljava/lang/CharSequence;Z)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getFactor()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/ScrollMenu;->activate(Landroid/widget/ListAdapter;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    long-to-int v0, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private processShortcutMenuSelection(IJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long v0, p2, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_2
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_4
    throw v2

    :catch_5
    move-exception v3

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catch_7
    move-exception v2

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "maximum_power_saving"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;

    const-wide/16 v1, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher$BootWatcher;-><init>(Lcom/sec/android/app/twlauncher/Launcher;J)V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIDGETS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SHORTCUTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WALLPAPER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TSTORE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->unblockDispatchDraw()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootInProgress:Z

    goto :goto_0
.end method

.method private removePackageFromWorkspace(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removePackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetAndRestartLoaders()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "Launcher"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "resetAndRestartLoaders. Launcher: %x"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v6, p0, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, v6, p0, v7, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    return-void
.end method

.method private restoreActiveMenu()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showShortcutMenu()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showAppShortcutMenu()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ScrollMenu;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showFolderMenu()V

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "launcher.delete_application"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const-string v15, "launcher.current_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v15, -0x1

    if-le v5, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v15, v5}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    :cond_2
    const-string v15, "launcher.menu_mode"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v15, 0x2

    if-ne v9, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreEditModeFactor()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->restoreLM()V

    :cond_3
    const-string v15, "launcher.menu_current_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/4 v15, -0x1

    if-le v8, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    :cond_4
    const-string v15, "launcher.add_screen"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v15, -0x1

    if-le v3, v15, :cond_5

    new-instance v15, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v15}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    const/4 v15, 0x1

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    iput v3, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    const-string v15, "launcher.add_cellX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    const-string v15, "launcher.add_cellY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const-string v15, "launcher.add_spanX"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    const-string v15, "launcher.add_spanY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    iput v15, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    const-string v15, "launcher.add_occupied_cells"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v15

    const-string v16, "launcher.add_countX"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v17, "launcher.add_countY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v15, v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    :cond_5
    const-string v15, "launcher.active_menu_id"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreActiveMenu()V

    sget-object v15, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v14

    const-string v15, "launcher.remove_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v15, "launcher.remove_folder_id"

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    :cond_6
    const-string v15, "launcher.rename_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v15, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v15, v11}, Lcom/sec/android/app/twlauncher/FolderInfo;->setOwner(I)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    :cond_7
    const-string v15, "launcher.all_apps_folder"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    :cond_8
    const-string v15, "launcher.quick_navigation"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const-string v15, "launcher.menu_screen_count"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    const-string v15, "launcher.delete_index"

    const/16 v16, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-ltz v15, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_0

    :pswitch_0
    const-string v15, "launcher.rename_folder_id"

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto :goto_1

    :pswitch_1
    const-string v15, "launcher.rename_folder_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sget-object v15, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setScreen(I)V
    .locals 2

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSomethingsInDefaultIMSI()V
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "ro.build.PDA"

    const-string v2, "Not Available"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "uartapcpmode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usbapcpmode"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getBatteryLevel()Ljava/lang/String;

    const-string v1, ""

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMSI:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.hw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDA : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ro.build.PDA"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.sw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSC : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.official_cscver"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCscVer:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RF Cal. Date : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ril.rfcal_date"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mRfCalDate:Ljava/lang/String;

    const-string v1, "N/A"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAMERA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mCameraFirmVer:Ljava/lang/String;

    const-string v1, "SMD,PBA : N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsSmdPbaTested:Ljava/lang/String;

    const-string v1, "UniqueNumber : N"

    sput-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mUNnumber:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v6, "PATH_TSP_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TSP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mTspFirmVer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v4, "MODEL"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "I9103"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->config:Lcom/sec/android/app/twlauncher/appConfig;

    const-string v6, "PATH_TSK_FIRM_VER"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/appConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TSK : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_0
    :goto_3
    if-nez v2, :cond_2

    const-string v0, "UART : MODEM"

    :goto_4
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v0, "USB : MODEM"

    :goto_5
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.samsungtest.AnswerLauncherDisplay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.RequestLauncherDisplay"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_6
    const-string v4, "Launcher"

    const-string v5, "Tsp firmver read error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_7
    const-string v1, "Launcher"

    const-string v4, "Tsk firmver read error"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_2

    :cond_1
    const-string v0, "TSK : N/A"

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mTskFirmVer:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const-string v0, "UART : PDA"

    goto :goto_4

    :cond_3
    const-string v0, "USB : PDA"

    goto :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_7

    :catch_5
    move-exception v4

    goto :goto_6

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private setWallpaperDimension()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v1, v4, :cond_1

    move v5, v2

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    move v4, v1

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    :goto_2
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v5

    if-nez v5, :cond_7

    :try_start_0
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getIntrinsicHeight()I

    move-result v7

    mul-int/lit8 v5, v5, 0xc

    div-int/lit8 v5, v5, 0xa

    if-ge v7, v5, :cond_4

    :goto_3
    if-eqz v2, :cond_5

    const-string v2, "Launcher"

    const-string v5, "It\'s image wallpaper. scrollable wallpaper"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v2, v4, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    mul-int/lit8 v0, v4, 0x2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-void

    :cond_1
    move v5, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    :try_start_1
    const-string v2, "Launcher"

    const-string v5, "It\'s image wallpaper. fixed wallpaper"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0, v4, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_6
    :try_start_2
    invoke-virtual {v0, v1, v4}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_7
    const-string v2, "Launcher"

    const-string v5, "It\'s live wallpaper. suggestDesiredDimensions() with SPAN 2"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v2, v4, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_4
.end method

.method private setupViews()V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, -0x1

    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    const v0, 0x7f060014

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const v0, 0x7f060015

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    const v0, 0x7f060022

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    const v0, 0x7f060018

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    const v0, 0x7f060019

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    const v0, 0x7f060017

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    invoke-virtual {v7, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "Launcher"

    const-string v1, "setupViews loadMenuMode() == MenuManager.EDIT_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    :cond_0
    invoke-virtual {v7, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "screencount"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    move v2, v3

    :goto_0
    if-ge v2, v8, :cond_2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v1, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_1
    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    if-lt v1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    :cond_3
    const-string v0, "ro.csc.homescreen.defaultscreen"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "currentscreen"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_4

    if-lt v0, v8, :cond_5

    :cond_4
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    :cond_5
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v5, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    invoke-virtual {v5, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    const v0, 0x7f06002d

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    const v0, 0x7f06002a

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    const v0, 0x7f06002b

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    const v0, 0x7f060029

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const v0, 0x7f06001a

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    const v0, 0x7f060021

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    const v0, 0x7f06001d

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    const v0, 0x7f06001e

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    const v0, 0x7f06001f

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    const v0, 0x7f060020

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ScrollMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->setItemOnClickListener(Lcom/sec/android/app/twlauncher/ScrollMenu$OnItemClickListener;)V

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    return-void
.end method

.method private showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v3, 0x7f030018

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001c

    const v5, 0x7f020030

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f080017

    const v5, 0x7f020034

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001b

    const v5, 0x7f02002e

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    new-instance v3, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v4, 0x7f08001d

    const v5, 0x7f020035

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIZ)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceAdapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showAppShortcutMenu()V
    .locals 10

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    new-instance v4, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v1, 0x7f030018

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showFolderMenu()V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    new-instance v5, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030018

    invoke-direct {v5, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_LIVE_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v8, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v8, v1, v9, v0, v2}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f020031

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v10, v1, v3, v2}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v5, v0, v10}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showNotifications()V
    .locals 2

    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    :cond_0
    return-void
.end method

.method private showShortcutMenu()V
    .locals 11

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    new-instance v7, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v0, 0x7f030018

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v5

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v9, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v9, v1, v10, v0, v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    new-instance v0, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080016

    const v4, 0x7f02002f

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(Landroid/content/res/Resources;IIIZ)V

    invoke-virtual {v7, v0, v2}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->insertItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;I)V

    invoke-direct {p0, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showWallpaperMenu()V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    new-instance v4, Lcom/sec/android/app/twlauncher/TextIconAdapter;

    const v1, 0x7f030018

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/TextIconAdapter;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v0, v9}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->addItem(Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;)V

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->sort()V

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->activateMenu(Landroid/view/View;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private startLoaders()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Launcher"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "startLoaders. Launcher: %x"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, v1, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z

    move-result v0

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-nez v4, :cond_0

    :goto_0
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, v1, p0, v4, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private triggerModelAdd(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$9;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$9;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private triggerModelUpdate(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$10;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$10;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uninstallPackage()Z
    .locals 6

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallPackage(). package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    const/4 v2, 0x0

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppUnistallList:Ljava/util/HashMap;

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    return v2

    :catch_0
    move-exception v0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uninstallPackage() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0
.end method

.method private updateAddItemCellInfo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    :cond_1
    return-void
.end method

.method private updateShortcutsForPackage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcutsForPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    :catch_4
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_1
    :goto_4
    throw v3

    :catch_5
    move-exception v4

    goto :goto_4

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v3

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, -0x1

    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "custom_widget"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "search_widget"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "appWidgetId"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7, v6, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 4

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;->getProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught SecurityException while trying to bind app widget: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Launcher"

    const-string v1, "Launching picker instead of adding widget."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchAppWidgetPicker()V

    goto :goto_0
.end method

.method addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 11

    const/4 v4, 0x3

    const v3, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez p2, :cond_2

    const-string v0, "Launcher"

    const-string v1, "addNewDroppedSamsungWidget() : cellInfo is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->mItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v0, v8, v7

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    aget v0, v8, v10

    iput v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    aget v0, v8, v7

    aget v1, v8, v10

    invoke-direct {p0, p2, v9, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v9, v7

    aget v3, v9, v10

    aget v4, v8, v7

    aget v5, v8, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_1
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    iget v9, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v10, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    const-wide/16 v2, -0x64

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v8, v7

    aget v4, v8, v11

    move v2, p2

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 11

    const/4 v5, 0x3

    const v4, 0x7f08004a

    const/4 v10, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_4

    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : cellInfo is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v2, v8, v7

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    aget v2, v8, v10

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    aget v2, v8, v7

    aget v3, v8, v10

    invoke-direct {p0, v0, v9, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    iput v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v4, v9, v7

    aget v5, v9, v10

    aget v6, v8, v7

    aget v7, v8, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_0
.end method

.method addSearch()V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    iget v9, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v10, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v9, v0, v7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aput v10, v0, v11

    iput v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f060052

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v11

    move-object v1, v4

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method addSearch(Lcom/sec/android/app/twlauncher/Widget;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)Z

    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v4

    aget v5, v8, v7

    aget v6, v8, v9

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f060052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v2, v8, v7

    aget v3, v8, v9

    iget v4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method cancelAddWidget()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-ne v0, v5, :cond_1

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    :cond_2
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    :cond_4
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_0
.end method

.method cancelRemovePage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    return-void
.end method

.method checkWidgetSpace(I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eq v3, v6, :cond_0

    const/4 v7, 0x2

    if-eq v3, v7, :cond_0

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    invoke-virtual {v1, v8, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    if-eqz v0, :cond_2

    aget v7, v2, v5

    aget v8, v2, v6

    invoke-direct {p0, v0, v4, v7, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v6

    goto :goto_0
.end method

.method clearAddWidget()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    return-void
.end method

.method closeAllApplications()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    return-void
.end method

.method closeQuickViewMainMenu()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeQuickViewWorkspace()V
    .locals 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v0, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    goto :goto_1
.end method

.method closeSystemDialogs()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    const/4 v0, 0x7

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->unlock()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    const/4 v0, 0x4

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    const/4 v0, 0x5

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    const/4 v0, 0x6

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    const/16 v0, 0x8

    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    const/16 v0, 0x9

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    const/16 v0, 0xa

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    const/16 v0, 0xb

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    const/16 v0, 0xd

    :try_start_a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    const/16 v0, 0xe

    :try_start_b
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :goto_b
    const/16 v0, 0xf

    :try_start_c
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    const/16 v0, 0x12

    :try_start_d
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    :goto_d
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_2

    :catch_c
    move-exception v0

    goto :goto_1

    :catch_d
    move-exception v0

    goto :goto_0
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    :cond_2
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->infoFromApplicationIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v0, p3, p4}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0
.end method

.method completeAddWidget(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v3

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addSearch(Lcom/sec/android/app/twlauncher/Widget;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V

    goto :goto_0
.end method

.method public createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    iput v3, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object v1
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/android/app/twlauncher/BubbleTextView;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/BubbleTextView;

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    :cond_1
    iget-object v2, p3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030001

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public deactivateAllScrollMenus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ScrollMenu;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->deactivate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResolveInfoList:Ljava/util/List;

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    monitor-exit v1

    :goto_1
    return v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->handleBackKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    monitor-exit v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    monitor-exit v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    monitor-exit v1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "Launcher"

    const-string v3, "In this case, Option menu is not shown #1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mQuickViewWorkspace open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAnimating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mQuickViewMainMenu open : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isAnimating : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isAnimating()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Case #1, mStateQuickNavigation  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-eq v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->sTextureUploadLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findPreferredSingleSlotOrAnySlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)I
    .locals 8

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v2, v0, [I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    aget v0, v2, v5

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aget v0, v2, v3

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .locals 9

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    new-array v1, v2, [I

    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aput v0, v1, v7

    iget v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    aput v0, v1, v8

    new-array v2, v2, [I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move-object v0, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    aget v3, v2, v7

    iput v3, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    aget v2, v2, v8

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    aget v2, v1, v7

    iput v2, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aget v1, v1, v8

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    iput v0, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    :cond_0
    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I

    move-result v0

    return v0
.end method

.method findSlotAndScreen([I[IIILcom/sec/android/app/twlauncher/CellLayout$CellInfo;ZZ)I
    .locals 9

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    if-eqz p6, :cond_1

    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    if-eqz p5, :cond_0

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    :goto_2
    return v2

    :cond_1
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-lez v1, :cond_7

    add-int/lit8 v2, v1, -0x1

    :goto_3
    if-ltz v2, :cond_7

    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    if-eqz p6, :cond_5

    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    if-eqz p5, :cond_4

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    if-eqz p7, :cond_a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    if-eqz p6, :cond_9

    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p5

    if-eqz p5, :cond_8

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {p5, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v2, v4

    goto :goto_2

    :cond_9
    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    goto :goto_5

    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_2
.end method

.method getAddToWorkspaceBackground()Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceBackground:Lcom/sec/android/app/twlauncher/AddToWorkspaceBackground;

    return-object v0
.end method

.method getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetDialog:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    return-object v0
.end method

.method getAdjacentBlankScreen(I)I
    .locals 12

    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    const/4 v4, -0x1

    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    move v4, v2

    :cond_1
    if-nez p1, :cond_3

    move v5, v4

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, p1, -0x1

    :goto_2
    if-ltz v2, :cond_6

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    move v4, v2

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_1
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method public getFolderUi(Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/Folder;
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    if-ne v0, v3, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080081

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    iput-boolean v3, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    :goto_2
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    const v2, 0x7f080082

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    iget-object v0, v1, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method getGLSurfaceViewGroup()Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    return-object v0
.end method

.method getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherManager:Lcom/sec/android/app/twlauncher/LauncherManager;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method public getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIconSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method public getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawableToRetainedSurface(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mEditCornerSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method protected getNewFolderName(I)Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\\d+"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    if-ne p1, v1, :cond_1

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getWorkspaceFolderList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-ne v6, v7, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne p1, v7, :cond_2

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerFolderList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_5

    if-ltz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_4
    move v1, v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;
    .locals 11

    const/16 v10, 0x78

    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    const/4 v8, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/twlauncher/MultipleSize;->setSize(II)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method ignoreGLPauseResume()Z
    .locals 2

    const-string v0, "ro.build.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FROYO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isAddWidgetState()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAllPageSlot(I)Z
    .locals 5

    const v4, 0x7f080053

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v3, v2, v0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v3, v2, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public isAppWidgetPreviewVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDefaultIMSI()Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "999999999999999"

    const-string v2, "999999999999999"

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ril.FS"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz v3, :cond_1

    const-string v1, "Default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public isManagingWallpaper()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSearchManagerVisible()Z
    .locals 3

    const/4 v0, 0x0

    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v0

    return v0
.end method

.method isWindowOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    return v0
.end method

.method loadMenuMode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    :try_start_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.sec.android.appwidget.widgetinfo"

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    :cond_2
    :goto_1
    const-string v2, "supportCellSizes"

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method menudiscard()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    return-void
.end method

.method menusave()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    :cond_0
    if-ne p2, v3, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateAddItemCellInfo()V

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {p0, p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_3

    :goto_2
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_4

    :goto_3
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "appWidgetComponentName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_5

    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, v1, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-nez v3, :cond_6

    :goto_4
    invoke-direct {p0, p3, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    const/16 v0, 0x9

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_8
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method onApplicationsLoaded(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->skippedApplications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onApplicationsLoaded() : DISCARD applications. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Launcher"

    const-string v1, "Failed to find inntent for application shortcut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v1, v5

    aget v4, v1, v7

    aget v5, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v1, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onCreate. Launcher: %x, mDestroyed: %b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V

    :goto_0
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->registerPkgChangeListener(Landroid/app/Application;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate():  product model family:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " product model : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    const-string v0, "ro.csc.homescreen.screencount"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-gt v0, v1, :cond_0

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const-string v0, "launcher"

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    new-instance v0, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v1, v2, v5, v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isDefaultIMSI()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMSI()V

    :cond_2
    new-instance v0, Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/DataConnChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageOutline:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageFrame:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPageHighlight:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->queuePreload(Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.twlauncher.ACTION_MAIN_LAUNCHER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createRenameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateFolder;->createNameFolderDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080077

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080078

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    const v0, 0x7f080079

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerYesNoDialog;->createDialog(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$LauncherManagerHelp1;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher$DefaultSortConfirmDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;->access$2300(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOn;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;->access$2500(Lcom/sec/android/app/twlauncher/Launcher$MotionPanningDialogOff;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;->access$2700(Lcom/sec/android/app/twlauncher/Launcher$MenuEditDialog;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$ViewTypeDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TipsDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v2, 0x7f08002d

    invoke-interface {p1, v1, v5, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020036

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x41

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v2, 0x7f08002e

    invoke-interface {p1, v0, v7, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020041

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const v2, 0x7f08002f

    invoke-interface {p1, v0, v6, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v2, 0x5

    const v3, 0x7f080030

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020038

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x4e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/16 v2, 0xd

    const v3, 0x7f080033

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x45

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x7

    const v4, 0x7f080032

    invoke-interface {p1, v0, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02003f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x50

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    const/16 v2, 0x8

    const v3, 0x7f080033

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-boolean v2, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    const v3, 0x7f080035

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    const/16 v2, 0xf

    const v3, 0x7f080039

    invoke-interface {p1, v5, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020040

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0xa

    const v3, 0x7f080036

    invoke-interface {p1, v7, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0xf

    const v3, 0x7f080039

    invoke-interface {p1, v7, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020040

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0xb

    const v3, 0x7f080037

    invoke-interface {p1, v6, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02003d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0xc

    const v3, 0x7f080038

    invoke-interface {p1, v6, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020037

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x10

    const v5, 0x7f08003f

    invoke-interface {p1, v6, v4, v0, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v3, 0x7f020039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x11

    const v4, 0x7f080040

    invoke-interface {p1, v6, v3, v0, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move v0, v1

    goto/16 :goto_0
.end method

.method onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher;->bindDesktopItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "onDesktopItemsLoaded() : DISCARD desktop items. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v6, "Launcher"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "onDestroy. Launcher: %x"

    new-array v9, v13, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    invoke-virtual {v6, v12}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHostContext:Landroid/content/MutableContextWrapper;

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_2
    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHostView;->destroyLauncherReferences()V

    invoke-virtual {v5, v12}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v6, "Launcher"

    const-string v7, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/method/TextKeyListener;->release()V

    sget-object v6, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbind(Lcom/sec/android/app/twlauncher/Launcher;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDestroy()V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBootCompleteIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExternalAppsAvailabilityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCountChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Lcom/sec/android/app/twlauncher/ScrollMenu;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddToWorkspaceMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWorkspaceMenuSelection(IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpapersMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAddToWallpapersMenuSelection(IJ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcutMenuSelection(IJ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_4

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processAppShortcutMenuSelection(IJ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderMenu:Lcom/sec/android/app/twlauncher/ScrollMenu;

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->processFolderMenuSelection(IJ)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x42

    if-eq p1, v2, :cond_1

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->isDone:Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "IconDebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher.java onLongClick mDesktopLocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopLocked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-nez v0, :cond_1

    const-string v0, "IconDebug"

    const-string v1, "Launcher.java onLongClick cellInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v3, :cond_4

    const-string v3, "IconDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher.java onLongClick cellInfo.valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "IconDebug"

    const-string v1, "Launcher.java onLongClick cellInfo.vacantCells.size()==0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddToWorkspaceMenu(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_3
    :goto_2
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showMotionDialog()Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_2

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    const/high16 v5, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->setIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    const-string v0, "widgetInstall"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "widgetInstall"

    const-string v4, "widgetInstall"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "packageName"

    const-string v4, "packageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "className"

    const-string v4, "className"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_8

    const-string v3, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->discard()V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_1

    :cond_6
    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "screencount"

    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "ro.csc.homescreen.defaultscreen"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    if-lt v3, v0, :cond_7

    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN:I

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    :cond_7
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showWallpaperMenu()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMenuEditDialogAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_0

    :pswitch_7
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)Z

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onShareAppRequested()V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(ZZ)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(ZZ)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setMode(Z)V

    goto/16 :goto_0

    :pswitch_13
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onPause. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->suspendDrawingUntilResume()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isSearchManagerVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->stopSearch()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    const v0, 0x7f060049

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f06003b

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_1
        0xb -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    if-eqz v2, :cond_0

    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In this case, Option menu is not shown #3 mOptionsMenuState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #4 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #5 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "Launcher"

    const-string v2, "In this case, Option menu is not shown #6 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1, v0, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_b

    :cond_6
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_3
    move v0, v1

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v5, :cond_9

    :cond_8
    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    if-ne v2, v4, :cond_5

    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v2

    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    goto :goto_1

    :cond_a
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_b
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v0, "Launcher"

    const-string v2, "Unable to find a vacant cell from the model"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlotAnywhere(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v2, v3, :cond_f

    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    :goto_4
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v5, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    goto/16 :goto_3

    :cond_f
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4
.end method

.method protected onRestart()V
    .locals 6

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onRestart. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onResume()V

    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, -0x1

    const-string v1, "android:viewHierarchyState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const-string v1, "android:views"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    const-string v3, "android:views"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz v2, :cond_1

    const-string v3, "android:views"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "android:focusedViewId"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android:Panels"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onResume. Launcher: %x, mIsNewIntent: %b"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->stopSuspendingDrawing()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startLoaders()V

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->cancelOutAnimIfRunning()Z

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Launcher"

    const-string v1, "onResume: get Intent Action[LAUNCHER_ACTION_ALL_APPS] by HW Application key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->finishAppWidgetResize()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()Z

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBindSamsungAppWidgetExternal:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_4
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->sIsChangedBadge:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isApplicationsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->animateClose()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateOpen()V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBinder:Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 16

    invoke-super/range {p0 .. p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v13, "launcher.current_screen"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v8

    const-string v13, "launcher.delete_application"

    sget-object v14, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v9

    const-string v13, "launcher.menu_mode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.menu_current_screen"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.menu_screen_count"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.active_menu_id"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mActiveMenuId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v14, -0x1

    if-le v13, v14, :cond_1

    const-string v13, "launcher.quick_navigation"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v14, -0x1

    if-le v13, v14, :cond_0

    const-string v13, "launcher.delete_index"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v6

    iget-wide v13, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    aput-wide v13, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-string v13, "launcher.delete_index"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "launcher.quick_navigation"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    if-eqz v13, :cond_2

    const-string v13, "launcher.delete_index"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v13, "launcher.delete_index"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "launcher.quick_navigation"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v13, "launcher.quick_navigation"

    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v13, "launcher.user_folder"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string v13, "launcher.all_apps_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v13, v13, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v13, v14}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v7

    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    :cond_8
    :goto_2
    sget-object v13, Lcom/sec/android/app/twlauncher/Launcher;->sModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/LauncherModel;->getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getSpecialFolders()Ljava/util/Hashtable;

    move-result-object v12

    const-string v13, "launcher.remove_folder_id"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "launcher.rename_folder_id"

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v13, :cond_9

    const-string v13, "launcher.rename_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/FolderInfo;->getOwner()I

    move-result v11

    const-string v13, "launcher.rename_folder_owner"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    packed-switch v11, :pswitch_data_0

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_a

    const-string v13, "launcher.remove_folder"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "launcher.remove_folder_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v12, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :cond_b
    const-string v13, "launcher.add_screen"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_cellX"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_cellY"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_spanX"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_spanY"

    iget v14, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_countX"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_countY"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "launcher.add_occupied_cells"

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_2

    :pswitch_0
    const-string v13, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v14, v14, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    instance-of v13, v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v13, :cond_9

    const-string v14, "launcher.rename_folder_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    check-cast v13, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v12, v14, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return v1
.end method

.method protected onStop()V
    .locals 6

    const-string v0, "Launcher"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "onStop. Launcher: %x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->ignoreGLPauseResume()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->stopSuspendingDrawing()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_0
.end method

.method openQuickViewMainMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    goto :goto_1
.end method

.method openQuickViewWorkspace()V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->deactivateAllScrollMenus()V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    const v0, 0x7f04000a

    const v1, 0x7f04000b

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040008

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method previewAddSamsungWidget()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v1, v6

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v0, v2

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method previewAddSearch()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidget:Lcom/sec/android/app/twlauncher/Widget;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v1, Lcom/sec/android/app/twlauncher/Widget;->layoutResource:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f060052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Search;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/Search;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    mul-int/2addr v0, v6

    iget v1, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    mul-int/2addr v1, v3

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method removePage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    return-void
.end method

.method saveMenuMode(I)V
    .locals 4

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMenuMode mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveScreenInfo()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBackgroundNotification(I)V
    .locals 1

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method setWindowOpaque()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "setWindowOpaque()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return-void

    :cond_0
    const-string v0, "Launcher"

    const-string v1, "Failed to retrieve window from launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setWindowTranslucent()V
    .locals 2

    const-string v0, "Launcher"

    const-string v1, "setWindowTranslucent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return-void

    :cond_0
    const-string v0, "Launcher"

    const-string v1, "Failed to retrieve window from launcher"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method showCreateFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method public showDeferredOptionsMenu()V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOptionsMenuState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openOptionsMenu()V

    goto :goto_0
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .locals 1

    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method showDeleteWorkScreen()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method showDiscardMenuEdit()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method showMMRemoveFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderToRemove:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method protected showMotionDialog()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isMotionSettingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method showRenameFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    return-void
.end method

.method showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 7

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    :cond_0
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Landroid/app/SearchManager;)V

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    return-void
.end method

.method showWidgetMessage(Z)V
    .locals 4

    const v3, 0x7f080022

    const v2, 0x7f080011

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;)V
    .locals 5

    const v4, 0x7f080008

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return startActivitySafely intent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsActive :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDataConnChecker:Lcom/sec/android/app/twlauncher/DataConnChecker;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/DataConnChecker;->checkDataConnectionApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    :try_start_0
    const-string v0, "OPP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "OPS"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/Search;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Search;->setQuery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopSearch()V
    .locals 3

    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->findSearchWidgetOnCurrentScreen()Lcom/sec/android/app/twlauncher/Search;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Search;->stopSearch(Z)V

    :cond_0
    return-void
.end method

.method public uninstallPackage(Ljava/lang/String;)Z
    .locals 1

    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()Z

    move-result v0

    return v0
.end method

.method updateWindowTransparency()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce32BitWindow:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->m32BitWindow:Z

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mGLSurfaceViewGroup:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->setupEGL(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_3

    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method updateWorkspaceBadge()V
    .locals 9

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenAt(I)Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v8, v0, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v8, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/sec/android/app/twlauncher/UserFolder;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v8, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    instance-of v8, v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_0

    check-cast v5, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->updateBadgeCount()I

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
