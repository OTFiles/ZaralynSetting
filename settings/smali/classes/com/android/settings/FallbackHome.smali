.class public Lcom/android/settings/FallbackHome;
.super Landroid/app/Activity;
.source "FallbackHome.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mProvisioned:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/-$$Lambda$FallbackHome$t1fq3k7x_PY-DiX5Fz-YbaIlCdg;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$FallbackHome$t1fq3k7x_PY-DiX5Fz-YbaIlCdg;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    .line 103
    new-instance v0, Lcom/android/settings/FallbackHome$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$1;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    new-instance v0, Lcom/android/settings/FallbackHome$2;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$2;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FallbackHome;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/FallbackHome;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/FallbackHome;)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->setContentView(Landroid/view/View;)V

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 55
    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 56
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 57
    const v2, 0x10c000d

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 61
    return-void
.end method

.method private maybeFinish()V
    .locals 6

    .line 111
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "homeIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 115
    .local v1, "homeInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    const-string v3, "FallbackHome"

    const-string v4, "User unlocked but no home; let\'s hope someone enables one soon?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 125
    :cond_1
    const-string v3, "FallbackHome"

    const-string v4, "User unlocked and real home found; let\'s go!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/FallbackHome;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 126
    invoke-virtual {v3, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->finish()V

    .line 131
    .end local v0
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    .line 71
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-nez v0, :cond_1

    .line 72
    const v0, 0x7f1300b7

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->setTheme(I)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FallbackHome;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    .line 82
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_0
    return-void
.end method
