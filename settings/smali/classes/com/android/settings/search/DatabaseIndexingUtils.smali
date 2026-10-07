.class public Lcom/android/settings/search/DatabaseIndexingUtils;
.super Ljava/lang/Object;
.source "DatabaseIndexingUtils.java"


# direct methods
.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;

    .line 54
    const/16 v0, 0x22

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "screenTitle"    # Ljava/lang/String;
    .param p4, "sourceMetricsCategory"    # I

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 68
    .local v1, "searchDestination":Landroid/content/Intent;
    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 69
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 70
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    return-object v1
.end method

.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .line 141
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 142
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/Indexable$SearchIndexProvider;

    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 150
    .end local v1
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IndexingUtil"

    const-string v3, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "IndexingUtil"

    const-string v3, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    .line 146
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "IndexingUtil"

    const-string v3, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1
    goto :goto_0

    .line 143
    :catch_3
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "IndexingUtil"

    const-string v3, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v1
    :goto_0
    nop

    .line 154
    :goto_1
    return-object v0
.end method
