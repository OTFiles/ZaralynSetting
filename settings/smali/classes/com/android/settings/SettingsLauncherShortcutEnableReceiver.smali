.class public Lcom/android/settings/SettingsLauncherShortcutEnableReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsLauncherShortcutEnableReceiver.java"


# static fields
.field public static PKGNAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/android/settings/SettingsLauncherShortcutEnableReceiver$1;

    invoke-direct {v0}, Lcom/android/settings/SettingsLauncherShortcutEnableReceiver$1;-><init>()V

    sput-object v0, Lcom/android/settings/SettingsLauncherShortcutEnableReceiver;->PKGNAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 17
    const-string v0, "LauncherShortcutEnableReceiver"

    iput-object v0, p0, Lcom/android/settings/SettingsLauncherShortcutEnableReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 30
    .local v1, "launchIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "label":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "pkgName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    .line 34
    :try_start_0
    new-instance v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    invoke-direct {v4}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>()V

    .line 35
    .local v4, "nowShortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    iput-object v2, v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->title:Ljava/lang/String;

    .line 36
    iput-object v3, v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->iconPackage:Ljava/lang/String;

    .line 37
    iput-object v1, v4, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->intent:Landroid/content/Intent;

    .line 40
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v5, "savedLauncherShortcutCellListPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/shortcutenable/LauncherShortcutCell;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "launcher_shortcut_request_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "strReqList":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 43
    const-string v7, "["

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 44
    const-string v7, "\\}, \\{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 45
    .local v7, "arrayPkgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "inum":I
    :goto_0
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 46
    new-instance v9, Lcom/android/settings/shortcutenable/LauncherShortcutCell;

    aget-object v10, v7, v8

    invoke-direct {v9, v10}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;-><init>(Ljava/lang/String;)V

    .line 47
    .local v9, "shortcutCell":Lcom/android/settings/shortcutenable/LauncherShortcutCell;
    invoke-virtual {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 48
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v9
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 52
    .end local v7
    .end local v8
    :cond_1
    invoke-virtual {v4}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->isInitSucess()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/settings/shortcutenable/LauncherShortcutCell;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 53
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=====divhee=======SettingsLauncher_ShortcutEnableReceiver===========retStrReqList==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "launcher_shortcut_request_list"

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    .end local v4
    .end local v5
    .end local v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    .line 57
    :catch_0
    move-exception v4

    .line 60
    :cond_3
    :goto_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=====divhee=======SettingsLauncher_ShortcutEnableReceiver========label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1
    .end local v2
    .end local v3
    :cond_4
    return-void
.end method
