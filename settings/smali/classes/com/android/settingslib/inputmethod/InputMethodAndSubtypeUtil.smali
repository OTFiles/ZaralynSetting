.class public Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;
.super Ljava/lang/Object;
.source "InputMethodAndSubtypeUtil.java"


# static fields
.field private static final sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private static final sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 59
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method public static buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 67
    .local p0, "imeToSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 69
    .local v2, "imi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 70
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 73
    .local v3, "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 75
    .local v5, "subtypeId":Ljava/lang/String;
    const/16 v6, 0x3b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v5
    goto :goto_1

    .line 77
    .end local v2
    .end local v3
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInputMethodsString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 93
    .local p0, "imiList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "imi":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 96
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .end local v2
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "imiId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p2, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    nop

    .line 84
    invoke-static {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 85
    .local v0, "enabledImeAndSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "enabledImesAndSubtypesString":Ljava/lang/String;
    const-string v2, "enabled_input_methods"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void
.end method

.method private static getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "disabled_system_input_methods"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "disabledIMEsStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 162
    :goto_0
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    return-object v0
.end method

.method private static getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 416
    if-nez p0, :cond_0

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 423
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-nez v0, :cond_2

    .line 424
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    return-object v1

    .line 426
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 427
    .local v1, "configurationLocale":Ljava/util/Locale;
    if-nez v1, :cond_3

    .line 428
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    return-object v2

    .line 430
    :cond_3
    return-object v1
.end method

.method private static getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 123
    const-string v0, "enabled_input_methods"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "enabledInputMethodsStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 105
    :try_start_0
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method public static getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;

    .line 385
    if-nez p0, :cond_0

    .line 386
    const-string v0, ""

    return-object v0

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 389
    .local v0, "locale":Ljava/util/Locale;
    nop

    .line 390
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 389
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 392
    .local v1, "subtypeName":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputMethodInfo"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 399
    .local p0, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, ""

    return-object v0

    .line 402
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getDisplayLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 403
    .local v0, "locale":Ljava/util/Locale;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 404
    .local v1, "subtypeCount":I
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 405
    .local v2, "subtypeNames":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 406
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    .line 407
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 406
    invoke-virtual {v4, p1, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 410
    .end local v3
    :cond_1
    nop

    .line 411
    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;

    move-result-object v3

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-static {v3, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 113
    invoke-static {p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .param p0, "context"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v14/preference/PreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;)V"
        }
    .end annotation

    .line 303
    .local p2, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p3, "inputMethodPrefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/support/v7/preference/Preference;>;>;"
    nop

    .line 304
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v0

    .line 306
    .local v0, "enabledSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 307
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "imiId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/support/v14/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    .line 309
    .local v4, "pref":Landroid/support/v7/preference/Preference;
    instance-of v5, v4, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v5, :cond_1

    .line 310
    move-object v5, v4

    check-cast v5, Landroid/support/v7/preference/TwoStatePreference;

    .line 311
    .local v5, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 312
    .local v6, "isEnabled":Z
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 313
    if-eqz p3, :cond_0

    .line 314
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/Preference;

    .line 315
    .local v8, "childPref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 316
    .end local v8
    goto :goto_1

    .line 318
    :cond_0
    invoke-static {p0, p2, v3, v6}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->setSubtypesPreferenceEnabled(Landroid/support/v14/preference/PreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V

    .line 320
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_1
    goto :goto_0

    .line 321
    :cond_2
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->updateSubtypesPreferenceChecked(Landroid/support/v14/preference/PreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V

    .line 322
    return-void
.end method

.method public static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v0, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    return-object v0

    .line 137
    :cond_0
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 138
    :goto_0
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    sget-object v1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "nextImsStr":Ljava/lang/String;
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 141
    sget-object v2, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v2, "subtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "imiId":Ljava/lang/String;
    :goto_1
    sget-object v4, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    sget-object v4, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->sStringInputMethodSubtypeSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v1
    .end local v2
    .end local v3
    :cond_2
    goto :goto_0

    .line 151
    :cond_3
    return-object v0
.end method

.method private static putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "hashCode"    # I

    .line 117
    const-string v0, "selected_input_method_subtype"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    return-void
.end method

.method public static removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p0, "pref"    # Landroid/support/v7/preference/Preference;

    .line 372
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 380
    :cond_1
    return-void

    .line 374
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method

.method public static saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V
    .locals 24
    .param p0, "context"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "hasHardKeyboard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v14/preference/PreferenceFragment;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)V"
        }
    .end annotation

    .local p2, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 171
    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "currentInputMethodId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getInputMethodSubtypeSelected(Landroid/content/ContentResolver;)I

    move-result v3

    .line 174
    .local v3, "selectedInputMethodSubtype":I
    nop

    .line 175
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v4

    .line 176
    .local v4, "enabledIMEsAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getDisabledSystemIMEs(Landroid/content/ContentResolver;)Ljava/util/HashSet;

    move-result-object v5

    .line 178
    .local v5, "disabledSystemIMEs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 179
    .local v6, "needsToResetSelectedSubtype":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 180
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "imiId":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/support/v14/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 182
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    if-nez v10, :cond_0

    .line 183
    goto :goto_0

    .line 187
    :cond_0
    instance-of v11, v10, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v11, :cond_1

    .line 188
    move-object v11, v10

    check-cast v11, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v11}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    goto :goto_1

    .line 189
    :cond_1
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 190
    .local v11, "isImeChecked":Z
    :goto_1
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 191
    .local v12, "isCurrentInputMethod":Z
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v13

    .line 192
    .local v13, "systemIme":Z
    if-nez p3, :cond_2

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 192
    invoke-static {v14}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v14

    .line 193
    move-object v15, v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v14, v8, v7}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_2
    move-object v15, v7

    :goto_2
    if-eqz v11, :cond_a

    .line 195
    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 197
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_4
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 201
    .local v7, "subtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 202
    .local v14, "subtypePrefFound":Z
    move-object/from16 v16, v10

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v10

    .line 203
    .local v10, "subtypeCount":I
    .local v16, "pref":Landroid/support/v7/preference/Preference;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v18, v17

    .end local v17
    .local v18, "i":I
    move/from16 v19, v6

    move/from16 v6, v18

    if-ge v6, v10, :cond_9

    .line 204
    .end local v18
    .local v6, "i":I
    .local v19, "needsToResetSelectedSubtype":Z
    move/from16 v20, v10

    invoke-virtual {v8, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 205
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v20, "subtypeCount":I
    move-object/from16 v21, v8

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    .end local v8
    .local v21, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "subtypeHashCodeStr":Ljava/lang/String;
    move-object/from16 v22, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2
    .local v22, "currentInputMethodId":Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/TwoStatePreference;

    .line 209
    .local v2, "subtypePref":Landroid/support/v7/preference/TwoStatePreference;
    if-nez v2, :cond_5

    .line 210
    nop

    .line 203
    move/from16 v0, v19

    goto :goto_5

    .line 212
    :cond_5
    if-nez v14, :cond_6

    .line 215
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 217
    const/16 v17, 0x1

    .line 218
    .end local v19
    .local v17, "needsToResetSelectedSubtype":Z
    const/4 v14, 0x1

    goto :goto_4

    .line 225
    .end local v17
    .restart local v19
    :cond_6
    move/from16 v17, v19

    .end local v19
    .restart local v17
    :goto_4
    invoke-virtual {v2}, Landroid/support/v7/preference/TwoStatePreference;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/preference/TwoStatePreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 226
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    if-eqz v12, :cond_8

    .line 228
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    if-ne v3, v0, :cond_8

    .line 231
    const/4 v0, 0x0

    .end local v17
    .local v0, "needsToResetSelectedSubtype":Z
    goto :goto_5

    .line 235
    .end local v0
    .restart local v17
    :cond_7
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 203
    .end local v2
    .end local v8
    .end local v10
    :cond_8
    move/from16 v0, v17

    .end local v17
    .restart local v0
    :goto_5
    add-int/lit8 v17, v6, 0x1

    .end local v6
    .local v17, "i":I
    move v6, v0

    move/from16 v10, v20

    move-object/from16 v8, v21

    move-object/from16 v2, v22

    move-object/from16 v0, p0

    goto :goto_3

    .line 238
    .end local v0
    .end local v7
    .end local v14
    .end local v17
    .end local v20
    .end local v21
    .end local v22
    .local v2, "currentInputMethodId":Ljava/lang/String;
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v19
    :cond_9
    move-object/from16 v22, v2

    move-object/from16 v21, v8

    .line 253
    .end local v2
    .end local v8
    .restart local v21
    .restart local v22
    move/from16 v6, v19

    goto :goto_6

    .line 239
    .end local v16
    .end local v19
    .end local v21
    .end local v22
    .restart local v2
    .local v6, "needsToResetSelectedSubtype":Z
    .restart local v8
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    :cond_a
    move-object/from16 v22, v2

    move-object/from16 v21, v8

    move-object/from16 v16, v10

    .end local v2
    .end local v8
    .end local v10
    .restart local v16
    .restart local v21
    .restart local v22
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    if-eqz v12, :cond_b

    .line 248
    const/4 v0, 0x0

    .line 253
    .end local v22
    .local v0, "currentInputMethodId":Ljava/lang/String;
    move-object v2, v0

    goto :goto_6

    .end local v0
    .restart local v22
    :cond_b
    move-object/from16 v2, v22

    .end local v22
    .restart local v2
    :goto_6
    if-eqz v13, :cond_d

    if-eqz p3, :cond_d

    .line 254
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 255
    if-eqz v11, :cond_d

    .line 256
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 259
    :cond_c
    if-nez v11, :cond_d

    .line 260
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v9
    .end local v11
    .end local v12
    .end local v13
    .end local v16
    .end local v21
    :cond_d
    :goto_7
    nop

    .line 179
    move-object v7, v15

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 266
    :cond_e
    move-object/from16 v22, v2

    .end local v2
    .restart local v22
    invoke-static {v4}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "enabledIMEsAndSubtypesString":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "disabledSystemIMEsString":Ljava/lang/String;
    if-nez v6, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isInputMethodSubtypeSelected(Landroid/content/ContentResolver;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 285
    :cond_f
    const/4 v7, -0x1

    invoke-static {v1, v7}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->putSelectedInputMethodSubtype(Landroid/content/ContentResolver;I)V

    .line 288
    :cond_10
    const-string v7, "enabled_input_methods"

    invoke-static {v1, v7, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 291
    const-string v7, "disabled_system_input_methods"

    invoke-static {v1, v7, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    :cond_11
    const-string v7, "default_input_method"

    .line 297
    if-eqz v22, :cond_12

    .line 296
    move-object/from16 v8, v22

    goto :goto_8

    .line 297
    :cond_12
    const-string v8, ""

    .line 296
    :goto_8
    invoke-static {v1, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    return-void
.end method

.method private static setSubtypesPreferenceEnabled(Landroid/support/v14/preference/PreferenceFragment;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v14/preference/PreferenceFragment;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 327
    .local p1, "inputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 328
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 329
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    .line 331
    .local v3, "subtypeCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 332
    invoke-virtual {v2, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 333
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/TwoStatePreference;

    .line 335
    .local v6, "pref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v6, p3}, Landroid/support/v7/preference/TwoStatePreference;->setEnabled(Z)V

    .line 331
    .end local v5
    .end local v6
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 340
    .end local v2
    .end local v3
    .end local v4
    :cond_1
    goto :goto_0

    .line 341
    :cond_2
    return-void
.end method

.method private static updateSubtypesPreferenceChecked(Landroid/support/v14/preference/PreferenceFragment;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 11
    .param p0, "context"    # Landroid/support/v14/preference/PreferenceFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v14/preference/PreferenceFragment;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 346
    .local p1, "inputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local p2, "enabledSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 347
    .local v0, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 348
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "id":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 354
    .local v4, "enabledSubtypesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v5

    .line 355
    .local v5, "subtypeCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 356
    invoke-virtual {v2, v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v7

    .line 357
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "hashCode":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 363
    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/TwoStatePreference;

    .line 364
    .local v9, "pref":Landroid/support/v7/preference/TwoStatePreference;
    if-eqz v9, :cond_1

    .line 365
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 355
    .end local v7
    .end local v8
    .end local v9
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 368
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_2
    goto :goto_0

    .line 369
    :cond_3
    return-void
.end method
