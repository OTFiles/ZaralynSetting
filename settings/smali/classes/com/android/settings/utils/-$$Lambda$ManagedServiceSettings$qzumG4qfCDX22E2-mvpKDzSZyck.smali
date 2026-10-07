.class public final synthetic Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/utils/ManagedServiceSettings;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v1, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$qzumG4qfCDX22E2-mvpKDzSZyck;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings;->lambda$updateList$0(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
