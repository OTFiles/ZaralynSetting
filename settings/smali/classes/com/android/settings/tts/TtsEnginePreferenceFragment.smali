.class public Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEnginePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentEngine:Ljava/lang/String;

.field private mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 183
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 48
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 114
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;-><init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private initSettings()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 87
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 89
    .local v3, "engine":Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v4, Lcom/android/settings/tts/TtsEnginePreference;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v3, p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Lcom/android/settings/SettingsActivity;)V

    .line 91
    .local v4, "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 92
    .end local v3
    .end local v4
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .param p1, "engine"    # Ljava/lang/String;

    .line 123
    const-string v0, "TtsEnginePrefFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating default synth to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    .line 133
    const-string v0, "TtsEnginePrefFragment"

    const-string v1, "Shutting down current tts engine"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 140
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TtsEnginePrefFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0
    :cond_0
    :goto_0
    const-string v0, "TtsEnginePrefFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 148
    const-string v0, "TtsEnginePrefFragment"

    const-string v1, "Success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 66
    const/16 v0, 0x5d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f1500b2

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "tts_engine_preference_category"

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 57
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 59
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->initSettings()V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 76
    :cond_0
    return-void
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .param p1, "status"    # I

    .line 157
    if-nez p1, :cond_0

    .line 158
    const-string v0, "TtsEnginePrefFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 161
    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    nop

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_synth"

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "TtsEnginePrefFragment"

    const-string v1, "Updating engine: Failed to bind to engine, reverting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 173
    :cond_1
    iput-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    .line 175
    :goto_0
    return-void
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "current"    # Landroid/widget/Checkable;

    .line 107
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentChecked:Landroid/widget/Checkable;

    .line 108
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->updateDefaultEngine(Ljava/lang/String;)V

    .line 181
    return-void
.end method
