.class public Lcom/android/settings/gestures/SwipeUpPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "SwipeUpPreferenceController.java"


# static fields
.field private static final ACTION_QUICKSTEP:Ljava/lang/String; = "android.intent.action.QUICKSTEP_SERVICE"

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_swipe_up_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->ON:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->OFF:I

    .line 41
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 42
    return-void
.end method

.method static isGestureAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 49
    :cond_0
    const v0, 0x1040161

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 51
    .local v0, "recentsComponentName":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.QUICKSTEP_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 53
    .local v2, "quickStepIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x100000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 55
    return v1

    .line 57
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static setSwipeUpPreference(Landroid/content/Context;Landroid/os/UserManager;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "enabled"    # I

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_up_to_switch_apps_enabled"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/SwipeUpPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "gesture_swipe_up_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    const v1, 0x11200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 91
    .local v0, "defaultValue":I
    iget-object v1, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swipe_up_to_switch_apps_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, "swipeUpEnabled":I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/gestures/SwipeUpPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_swipe_up"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2
    .param p1, "isChecked"    # Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/gestures/SwipeUpPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/gestures/SwipeUpPreferenceController;->setSwipeUpPreference(Landroid/content/Context;Landroid/os/UserManager;I)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
