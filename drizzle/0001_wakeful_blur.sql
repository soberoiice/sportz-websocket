ALTER TABLE "users" RENAME TO "commentary";--> statement-breakpoint
ALTER TABLE "commentary" DROP CONSTRAINT "users_match_id_matches_id_fk";
--> statement-breakpoint
ALTER TABLE "commentary" ADD CONSTRAINT "commentary_match_id_matches_id_fk" FOREIGN KEY ("match_id") REFERENCES "public"."matches"("id") ON DELETE no action ON UPDATE no action;