package com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.databinding.RowFortyfiveBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.searchresultprofile.`data`.model.FortyfiveRowModel
import kotlin.Int
import kotlin.collections.List

class FortyFiveAdapter(
  var list: List<FortyfiveRowModel>
) : RecyclerView.Adapter<FortyFiveAdapter.RowFortyfiveVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFortyfiveVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_fortyfive,parent,false)
    return RowFortyfiveVH(view)
  }

  override fun onBindViewHolder(holder: RowFortyfiveVH, position: Int) {
    val fortyfiveRowModel = FortyfiveRowModel()
    // TODO uncomment following line after integration with data source
    // val fortyfiveRowModel = list[position]
    holder.binding.fortyfiveRowModel = fortyfiveRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FortyfiveRowModel>) {
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
      item: FortyfiveRowModel
    ) {
    }
  }

  inner class RowFortyfiveVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFortyfiveBinding = RowFortyfiveBinding.bind(itemView)
    init {
      binding.btnFollow.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FortyfiveRowModel())
      }
      binding.linearArtist.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FortyfiveRowModel())
      }
    }
  }
}
