.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 128
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 130
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 131
    const v0, 0x7f1205cd

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 141
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 320
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 724
    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .line 229
    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f120394

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    return-void
.end method

.method private cooldown()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 703
    :cond_1
    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 704
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f120431

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 705
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .line 1009
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1010
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1041
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1042
    .local v1, "name":Landroid/content/ComponentName;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1045
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .line 589
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 591
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 593
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 594
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 597
    .end local v0
    :cond_0
    const v0, 0x7f0a0327

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 599
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 602
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 603
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 3
    .param p1, "postingView"    # Landroid/view/View;

    .line 720
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    .line 721
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 875
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 876
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 877
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 879
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 1002
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 998
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .line 235
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 241
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 244
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    goto/16 :goto_2

    .line 246
    :cond_1
    const v0, 0x7f0a03fa

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    .local v0, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    .line 249
    .local v3, "remainingAttempts":I
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    .line 250
    const v1, 0x7f120439

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 251
    .local v1, "warningTemplate":Ljava/lang/CharSequence;
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 251
    invoke-static {v1, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 253
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v1
    .end local v4
    goto :goto_1

    .line 255
    :cond_2
    move v1, v4

    .line 257
    .local v1, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 258
    .local v4, "service":Landroid/os/storage/IStorageManager;
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v5

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 261
    .end local v4
    goto :goto_0

    .line 259
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v4
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 264
    const v4, 0x7f12043e

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 265
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 266
    const v4, 0x7f12043d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 268
    :cond_4
    const v4, 0x7f12043c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 272
    .end local v1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 278
    :cond_5
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 281
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 284
    .end local v0
    .end local v3
    :cond_6
    :goto_2
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 10
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .line 835
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 838
    .local v0, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .line 840
    .local v1, "filteredImisCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 842
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v1, v4, :cond_0

    return v4

    .line 843
    :cond_0
    nop

    .line 844
    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 846
    .local v5, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 847
    add-int/lit8 v1, v1, 0x1

    .line 848
    goto :goto_0

    .line 851
    :cond_1
    const/4 v6, 0x0

    .line 852
    .local v6, "auxCount":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 853
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 854
    add-int/lit8 v6, v6, 0x1

    .line 856
    .end local v8
    :cond_2
    goto :goto_1

    .line 857
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .line 862
    .local v7, "nonAuxCount":I
    if-gtz v7, :cond_5

    if-eqz p2, :cond_4

    if-le v6, v4, :cond_4

    goto :goto_2

    .line 866
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    :cond_4
    goto :goto_0

    .line 863
    .restart local v3
    .restart local v5
    .restart local v6
    .restart local v7
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 864
    goto :goto_0

    .line 868
    .end local v3
    .end local v5
    .end local v6
    .end local v7
    :cond_6
    const/4 v2, 0x0

    if-gt v1, v4, :cond_8

    const/4 v3, 0x0

    .line 871
    invoke-virtual {p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    .line 868
    :cond_8
    :goto_3
    move v2, v4

    :goto_4
    return v2
.end method

.method private isDebugView()Z
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .line 990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 995
    return-void
.end method

.method private notifyUser()V
    .locals 4

    .line 363
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v0, :cond_0

    .line 364
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 375
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v0, :cond_2

    .line 383
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    goto :goto_1

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 388
    :cond_3
    :goto_1
    return-void
.end method

.method private passwordEntryInit()V
    .locals 6

    .line 754
    const v0, 0x7f0a02f0

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 755
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 759
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 761
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 765
    :cond_0
    const v0, 0x7f0a0255

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 766
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 771
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 773
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 774
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 779
    .end local v0
    :cond_2
    const v0, 0x7f0a043f

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 780
    .local v0, "imeSwitcher":Landroid/view/View;
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 782
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 783
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 784
    new-instance v2, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    :cond_3
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_4

    .line 796
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 798
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_4

    .line 799
    const/16 v3, 0x1a

    const-string v4, "CryptKeeper"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 800
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 803
    const/16 v3, 0x60

    iput v3, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 808
    .end local v2
    :cond_4
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-nez v2, :cond_5

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 811
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v2, :cond_5

    .line 812
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v2}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 816
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 818
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 824
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 4

    .line 928
    nop

    .line 929
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 930
    .local v0, "isLteDevice":Z
    :goto_0
    if-nez v0, :cond_1

    .line 931
    const-string v2, "CryptKeeper"

    const-string v3, "Going into airplane mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 937
    .end local v2
    :cond_1
    return-void
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 712
    if-eqz p1, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3270000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3670000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 717
    :goto_0
    return-void
.end method

.method private setupUi()V
    .locals 3

    .line 474
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    const v1, 0x7f0d007a

    if-nez v0, :cond_6

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 480
    :cond_0
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v1, :cond_3

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 544
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v1, :cond_5

    .line 546
    new-instance v1, Lcom/android/settings/CryptKeeper$ValidationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 547
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_2

    .line 485
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 543
    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 482
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    .line 549
    :cond_5
    :goto_2
    return-void

    .line 475
    .end local v0
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 476
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 477
    return-void
.end method

.method private showFactoryReset(Z)V
    .locals 5
    .param p1, "corrupt"    # Z

    .line 613
    const v0, 0x7f0a0162

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 617
    .local v0, "button":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    new-instance v2, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    const v2, 0x7f0a03fa

    const v3, 0x7f0a0468

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120427

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 634
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120426

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f12042f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 637
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12042e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 640
    :goto_0
    const v2, 0x7f0a0087

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 642
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :cond_1
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .line 980
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 981
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    .line 984
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    .line 986
    :goto_0
    return-void
.end method

.method private updateEmergencyCallButtonState()V
    .locals 2

    .line 946
    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 948
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 949
    return-void

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 953
    new-instance v1, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    const v1, 0x7f12043b

    .local v1, "textId":I
    goto :goto_0

    .line 970
    .end local v1
    :cond_1
    const v1, 0x7f12043a

    .line 972
    .restart local v1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 973
    return-void

    .line 961
    .end local v1
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 962
    return-void
.end method

.method private updateProgress()V
    .locals 10

    .line 648
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "state":Ljava/lang/String;
    const-string v1, "error_partially_encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 651
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 652
    return-void

    .line 656
    :cond_0
    const v1, 0x7f120434

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 657
    .local v1, "status":Ljava/lang/CharSequence;
    move v3, v2

    .line 660
    .local v3, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x32

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v3, v4

    .line 663
    goto :goto_1

    .line 661
    :catch_0
    move-exception v4

    .line 662
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .end local v4
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, "progress":Ljava/lang/String;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :try_start_1
    const-string v5, "vold.encrypt_time_remaining"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, "timeProperty":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 671
    .local v6, "time":I
    if-ltz v6, :cond_2

    .line 673
    add-int/lit8 v7, v6, 0x9

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0xa

    .line 674
    .end local v6
    .local v7, "time":I
    int-to-long v8, v7

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 675
    const v6, 0x7f120435

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v6

    .line 679
    .end local v5
    .end local v7
    :cond_2
    goto :goto_2

    .line 677
    :catch_1
    move-exception v5

    .line 681
    :goto_2
    const v5, 0x7f0a03fa

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 682
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 683
    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v4, v7, v2

    invoke-static {v1, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :cond_3
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 688
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 689
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 1036
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1026
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 396
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 406
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 416
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 422
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 421
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 420
    :catch_1
    move-exception v2

    .line 423
    .end local v1
    :goto_0
    return-void

    .line 427
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050049

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V

    .line 431
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_1

    .line 430
    :catch_2
    move-exception v1

    .line 435
    :goto_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 436
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v2, 0x3270000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 438
    if-eqz p1, :cond_3

    .line 439
    const-string v1, "cooldown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 442
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 443
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, "lastInstance":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v2, :cond_4

    .line 447
    move-object v2, v1

    check-cast v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 448
    .local v2, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v3, v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 449
    const-string v3, "CryptKeeper"

    const-string v4, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v2
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 573
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 575
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 576
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 580
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 884
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    return v0

    .line 886
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 889
    return v3

    .line 893
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 898
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 900
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 901
    new-instance v4, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v0

    invoke-virtual {v4, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 904
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    .line 907
    :goto_1
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1014
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 565
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 566
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 568
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 455
    const-string v0, "cooldown"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 465
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 467
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 553
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 554
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1031
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1032
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1020
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1021
    const/4 v0, 0x0

    return v0
.end method
