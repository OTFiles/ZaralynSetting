.class public Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseInfo"
.end annotation


# instance fields
.field public final appLabel:Ljava/lang/CharSequence;

.field public final componentName:Landroid/content/ComponentName;

.field public final key:Ljava/lang/String;

.field public final label:Ljava/lang/CharSequence;

.field public final labelStr:Ljava/lang/String;

.field public final service:Landroid/content/pm/ServiceInfo;

.field public final settings:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "_service"    # Landroid/content/pm/ServiceInfo;
    .param p3, "_settings"    # Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->service:Landroid/content/pm/ServiceInfo;

    .line 63
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->componentName:Landroid/content/ComponentName;

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->key:Ljava/lang/String;

    .line 65
    if-eqz p3, :cond_0

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->settings:Landroid/content/ComponentName;

    .line 67
    invoke-virtual {p2, p1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->labelStr:Ljava/lang/String;

    .line 69
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->appLabel:Ljava/lang/CharSequence;

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "another"    # Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->labelStr:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;

    iget-object v1, v1, Lcom/android/settings/applications/assist/VoiceInputHelper$BaseInfo;->labelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
