.class public Lcom/android/settings/accessibility/LocalePreference;
.super Landroid/support/v7/preference/ListPreference;
.source "LocalePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 48
    .local v2, "finalSize":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 49
    .local v3, "entries":[Ljava/lang/CharSequence;
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 50
    .local v4, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1207ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 51
    const-string v5, ""

    aput-object v5, v4, v0

    .line 53
    nop

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 55
    .local v5, "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 56
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 53
    .end local v5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/LocalePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/LocalePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
