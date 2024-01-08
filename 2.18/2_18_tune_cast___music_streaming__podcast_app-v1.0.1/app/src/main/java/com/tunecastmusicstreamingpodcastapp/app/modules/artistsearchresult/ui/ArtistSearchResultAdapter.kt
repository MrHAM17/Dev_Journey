package com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowArtistsearchresultBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artistsearchresult.`data`.model.ArtistsearchresultRowModel
import kotlin.Int
import kotlin.collections.List

class ArtistSearchResultAdapter(
  var list: List<ArtistsearchresultRowModel>
) : RecyclerView.Adapter<ArtistSearchResultAdapter.RowArtistsearchresultVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArtistsearchresultVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_artistsearchresult,parent,false)
    return RowArtistsearchresultVH(view)
  }

  override fun onBindViewHolder(holder: RowArtistsearchresultVH, position: Int) {
    val artistsearchresultRowModel = ArtistsearchresultRowModel()
    // TODO uncomment following line after integration with data source
    // val artistsearchresultRowModel = list[position]
    holder.binding.artistsearchresultRowModel = artistsearchresultRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArtistsearchresultRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: ArtistsearchresultRowModel
    ) {
    }
  }

  inner class RowArtistsearchresultVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArtistsearchresultBinding = RowArtistsearchresultBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ArtistsearchresultRowModel())
      }
      binding.linearArtist.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ArtistsearchresultRowModel())
      }
    }
  }
}
