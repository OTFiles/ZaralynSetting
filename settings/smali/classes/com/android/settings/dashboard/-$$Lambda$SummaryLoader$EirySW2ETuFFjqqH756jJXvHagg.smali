.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/SummaryLoader;

.field private final synthetic f$1:Landroid/content/ComponentName;

.field private final synthetic f$2:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$2:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$0:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$SummaryLoader$EirySW2ETuFFjqqH756jJXvHagg;->f$2:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/android/settings/dashboard/SummaryLoader;->lambda$setSummary$0(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    return-void
.end method
