.class public Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
.super Ljava/lang/Object;
.source "InputMethodSettingValuesWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;


# instance fields
.field private final mAsciiCapableEnabledImis:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getDefaultCurrentUserId()I

    move-result v6

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 77
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 78
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 79
    return-void
.end method

.method public static getDefaultCurrentUserId()I
    .locals 3

    .line 66
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-direct {v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->sInstance:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0
.end method


# virtual methods
.method public getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 97
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_0

    .line 98
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid selected imi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v2, ""

    monitor-exit v0

    return-object v2

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 102
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-static {p1, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 103
    .end local v1
    .end local v2
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    const/4 v0, 0x0

    .line 152
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 154
    .local v2, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v1

    .line 155
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 156
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p0, v3, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 159
    .end local v3
    :cond_0
    goto :goto_0

    .line 160
    :cond_1
    if-nez v0, :cond_2

    .line 161
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v3, "No \"enabledValidSystemNonAuxAsciiCapableIme\"s found."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    return v0

    .line 154
    .end local v2
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    .line 133
    .local v0, "isEnabled":Z
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 135
    monitor-exit v1

    return v3

    .line 137
    :cond_0
    monitor-exit v1

    .line 139
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 140
    invoke-virtual {p0, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getEnabledValidSystemNonAuxAsciiCapableImeCount(Landroid/content/Context;)I

    move-result v1

    .line 142
    .local v1, "enabledValidSystemNonAuxAsciiCapableImeCount":I
    if-gt v1, v3, :cond_2

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 142
    :goto_0
    return v3

    .line 137
    .end local v1
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 5
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 170
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v0

    .line 171
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 172
    .local v2, "tempImi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    .end local v2
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 170
    .end local v1
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z
    .locals 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 184
    .local v0, "systemLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    const/4 v1, 0x1

    return v1

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->TAG:Ljava/lang/String;

    const-string v3, "ascii capable subtype enabled imi not found. Fall back to English Keyboard subtype."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "keyboard"

    invoke-static {p1, v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v1

    return v1

    .line 195
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public refreshAllInputMethodAndSubtypes()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 84
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 86
    .local v1, "imms":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 87
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 88
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v4, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v3
    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->updateAsciiCapableEnabledImis()V

    .line 91
    .end local v1
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateAsciiCapableEnabledImis()V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 110
    iget-object v1, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 112
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v4

    .line 113
    .local v4, "subtypeCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 114
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 115
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string v7, "keyboard"

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 116
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    iget-object v7, p0, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->mAsciiCapableEnabledImis:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_2

    .line 113
    .end local v6
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    .end local v3
    .end local v4
    .end local v5
    :cond_1
    :goto_2
    goto :goto_0

    .line 122
    .end local v1
    :cond_2
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
