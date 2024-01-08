package com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowArtistdetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.artistdetails.`data`.model.ArtistdetailsRowModel
import kotlin.Int
import kotlin.collections.List

class ArtistDetailsAdapter(
  var list: List<ArtistdetailsRowModel>
) : RecyclerView.Adapter<ArtistDetailsAdapter.RowArtistdetailsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArtistdetailsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_artistdetails,parent,false)
    return RowArtistdetailsVH(view)
  }

  override fun onBindViewHolder(holder: RowArtistdetailsVH, position: Int) {
    val artistdetailsRowModel = ArtistdetailsRowModel()
    // TODO uncomment following line after integration with data source
    // val artistdetailsRowModel = list[position]
    holder.binding.artistdetailsRowModel = artistdetailsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArtistdetailsRowModel>) {
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
      item: ArtistdetailsRowModel
    ) {
    }
  }

  inner class RowArtistdetailsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArtistdetailsBinding = RowArtistdetailsBinding.bind(itemView)
    init {
      binding.linearSongCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ArtistdetailsRowModel())
      }
    }
  }
}
